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