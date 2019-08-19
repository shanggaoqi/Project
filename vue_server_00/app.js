//1.引入第三方模块
const express=require("express");
const mysql=require("mysql");
const cors=require("cors");
const session=require("express-session");
//2.配置第三方模块
//2.1配置连接池
var pool=mysql.createPool({
    host:"127.0.0.1",
    user:'root',
    password:'',
    port:3306,
    database:'m_nubia',
    connectionLimit:15
})
//2.2跨域
var server=express();
server.use(cors({
    origin:["http://127.0.0.1:8080","http://localhost:8080"],
    credentials:true
}))
//2.3session
server.use(session({
    secret:'128位字符串',
    resave:true,
    saveUninitialized:true
}))
//指定静态目录
server.use(express.static('public'));
server.listen(3000);
//3.完成第一个功能用户登录
server.get('/login',(req,res)=>{
    //1.参数
    var uname=req.query.uname;
    var upwd=req.query.upwd;
    //1.1正则表达式验证用户名或密码
    //2.sql
    var sql='SELECT id FROM n_login WHERE uname=? AND upwd=md5(?)';
    //3.json
    pool.query(sql,[uname,upwd],(err,result)=>{
        if(err)throw err;
        if(result.length==0){
            res.send({code:-1,msg:'用户名或密码有误'});
        }else{
            //将数据保存在session中
            req.session.uid=result[0].id;
            res.send({code:1,msg:'登录成功'});
        }
    })
})
//4.完成第二个功能用户注册
server.get('/register',(req,res)=>{
    //1.参数
    var uname=req.query.uname;
    var upwd=req.query.upwd;
    //console.log(obj);
    //2.sql
    var sql='SELECT id FROM n_login WHERE uname=?';
    //3.json
    pool.query(sql,[uname],(err,result)=>{
        if(err)throw err;
        if(result.length!=0){
            res.send("用户名已占用");
            return;
         }else{
            //1.创建sql向n_login表中插入用户名和密码
            var sql='INSERT INTO n_login VALUES(null,?,md5(?));'
            //2.json
            pool.query(sql,[uname,upwd],(err,result)=>{
                if(err)throw err;
                //res.send(result);
                if(result.affectedRows>0){
                    res.send({
                       code:200,msg:"插入成功" 
                    })
                }
            })
         }
    })
});
//5.完成首页手机数据加载
server.get("/phoneproduct",(req,res)=>{
    //参数
    var pno=req.query.pno;
    var ps=req.query.pagesize;
    //设置默认值
    if(!pno){pno=1};
    if(!ps){ps=6}; 
    //创建第一条sql语句
    var obj={code:1,msg:"查询成功"}
    var sql="SELECT id,img,maintitle,subtitle,price,secondprice FROM phone_product LIMIT ?,?";
    var off=(pno-1)*ps;
    var ps=parseInt(ps);
    pool.query(sql,[off,ps],(err,result)=>{
        if(err) throw err;
        obj.data=result;
        //查询手机列表中的所有商品页码
        var sql="SELECT count(*) AS c FROM phone_product";
        pool.query(sql,(err,result)=>{
            if(err) throw err;
            var pc=Math.ceil(result[0].c/ps);
            obj.pc=pc;
            res.send(obj);
        })
    })
})
//6.完成首页手机配件的加载
server.get("/partproduct",(req,res)=>{
    //参数
    var pno=req.query.pno;
    var ps=req.query.pagesize;
    //设置默认值
    if(!pno){pno=1};
    if(!ps){ps=6};
    //创建第一条sql语句
    var obj={code:1,msg:"查询成功"};
    var sql="SELECT id,img,title,price FROM part_product LIMIT ?,?";
    var off=(pno-1)*ps;
    var ps=parseInt(ps);
    pool.query(sql,[off,ps],(err,result)=>{
        if(err) throw err;
        obj.data=result;
        //查询手机列表中的所有商品页码
        var sql="SELECT count(*) AS c FROM part_product";
        pool.query(sql,(err,result)=>{
            if(err) throw err;
            var pc=Math.ceil(result[0].c/ps);
            obj.pc=pc;
            res.send(obj);
        })
    })
})
//7.完成手机组件列表的展示
server.get("/phonelist",(req,res)=>{
    //参数
    var pno=req.query.pno;
    var ps=req.query.pagesize;
    //设置默认值
    if(!pno){pno=1};
    if(!ps){ps=4}; 
    //创建第一条sql语句
    var obj={code:1,msg:"查询成功"}
    var sql="SELECT id,img,maintitle,subtitle,price,secondprice FROM phone_product LIMIT ?,?";
    // var sql="SELECT * FROM phone_product "
    var off=(pno-1)*ps;
    var ps=parseInt(ps);
    pool.query(sql,[off,ps],(err,result)=>{
        if(err) throw err;
        obj.data=result;
        //查询手机列表中的所有商品页码
        var sql="SELECT count(*) AS c FROM phone_product";
        pool.query(sql,(err,result)=>{
            if(err) throw err;
            var pc=Math.ceil(result[0].c/ps);
            obj.pc=pc;
            res.send(obj);
        })
    })
})
//8.完成手机配件商品列表的展示
server.get("/partlist",(req,res)=>{
    //参数
    var pno=req.query.pno;
    var ps=req.query.pagesize;
    //设置默认值
    if(!pno){pno=1};
    if(!ps){ps=4};
    //创建第一条sql语句
    var obj={code:1,msg:"查询成功"};
    var sql="SELECT id,img,title,price FROM part_product LIMIT ?,?";
    var off=(pno-1)*ps;
    var ps=parseInt(ps);
    pool.query(sql,[off,ps],(err,result)=>{
        if(err) throw err;
        obj.data=result;
        //查询手机列表中的所有商品页码
        var sql="SELECT count(*) AS c FROM part_product";
        pool.query(sql,(err,result)=>{
            if(err) throw err;
            var pc=Math.ceil(result[0].c/ps);
            obj.pc=pc;
            res.send(obj);
        })
    })
})
//9.完成发现组件中产品描述的展示
server.get("/faxian",(req,res)=>{
    //参数
    var pno=req.query.pno;
    var ps=req.query.pagesize;
    //设置默认值
    //if(!pno){pno=1};
    //if(!ps){ps=2};
    //创建sql语句
    var obj={code:1,msg:"查询成功"};
    var sql="SELECT * FROM faxian";
    //var off=(pno-1)*ps;
    //var ps=parseInt(ps);
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        obj.data=result;
        res.send(obj);
        //查询所有商品的页数
        //var sql="SELECT count(*) AS c FROM faxian";
        // pool.query(sql,(err,result)=>{
        //     if(err) throw err;
        //     //console.log(result);得到的是总共的商品数
        //     var pc=Math.ceil(result[0].c/ps);
        //     obj.pc=pc;
        //     res.send(obj);
        // })
    })
})