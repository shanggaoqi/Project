<template>
    <div class='login_container'> 
        <!--登录组件中返回按钮-->
        <!--login图片-->
        <img src="../../assets/login_img/back.png" @click="toHome" >
        <div>
            <img src="../../assets/login_img/logo.png">
        </div>
        <!--登录方式模块-->
        <div>
            <a href="#">账号密码登录</a>
            <span>|</span>
            <a href="#">短信验证码登录</a>
        </div>
        <!--用户名-->
        <mt-field :placeholder="unameholder" v-model="uname" class="iconfont icon-yonghu"></mt-field>
        <!--密码-->
        <mt-field :placeholder="upwdholder" v-model="upwd"  class="iconfont icon-mima1"type="password"></mt-field>
        <!--登录按钮-->
        <mt-button size="large" @click="login" class="mybutton">登录</mt-button>
        <div class="mylogin">
            <a href="#" @click="toRegister">立即注册</a>
            <a href="#">忘记密码?</a>
        </div>
    </div>
</template>
<script>
    export default{
        data(){
            return{
                unameholder:"请输入用户名",
                upwdholder:"请输入密码",
                uname:"",
                upwd:""
            }
        },
        methods:{
            login(){
                //完成登录
                //1.获取用户名和密码
                var u=this.uname;
                var pw=this.upwd;
                //2.创建一个正则表达式,字母数字下划线3~12
                var reg=/^[a-z0-9_]{3,12}$/i;
                //3.验证用户名 出现提示
                if(!reg.test(u)){
                    this.$toast('用户名格式错误');
                    return;
                }
                //4.验证密码 出错提示
                if(!reg.test(pw)){
                    this.$toast('密码格式错误');
                    return;
                }
                //5.发送ajax请求
                var url='login';
                var obj={uname:u,upwd:pw};
                this.axios.get(url,{params:obj}).then(result=>{
                    //1.判断服务器返回结果
                    //2.code>0跳转Home组件
                    if(result.data.code>0){
                        this.$router.push("/Home");   
                    }else{
                        //3.创建Home组件
                        //4.code<0交互提示框    
                        this.$messagebox("提示","用户名或密码输入有误");
                    }
                })
            },
            //login组件中左上角箭头的功能
            toHome(){
                this.$router.push('/Home')
            },
            //login组件中注册账号的功能
            toRegister(e){
                e.preventDefault(); 
                this.$router.push('/Register')
            }
        }
    }
</script>
<style scoped>
    .login_container{
        background-color:#fff;
    }
    .login_container>img{
        width:30px;
        height:30px;
    }
    .login_container div{
        text-align:center;
        margin:30px 0;
    }
    .login_container div>a{
        color:#000;
        text-decoration:none;
        font-family:"仿宋";
        font-size:16px;
        font-weight:bold;
    }
    .login_container div>span{
        padding:0 10px;
    }
    .iconfont{
        font-size:20px !important;
        padding-top:10px;
    }
    .mybutton{
        margin-top:20px;
        background:#E8380D;
        color:#fff;
        
    }
    .login_container .mylogin:last-child{
        display:flex;
        justify-content:space-between;
        margin-top:15px;
    }
    .login_container .mylogin>a{
        font-size:14px;
        font-weight:normal;
        font-family:"宋体";
    }
</style>