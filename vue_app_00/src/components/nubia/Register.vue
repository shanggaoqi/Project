<template>
    <div>
        <!--注册功能register-->
        <!--左上角图片和文字-->
        <img src="../../assets/login_img/back.png" @click="toHome" >
        <span>用户注册</span>
        <!--分割线-->
        <hr>
        <!--注册功能中的表单提交-->
        用户名:<input type="text" placeholder="用户名/邮箱/手机号" v-model="uname"><br/>
        密码:<input type="password" placeholder="密码长度为6~12位" v-model="upwd"><br/>
        密码:<input type="password" placeholder="请再次确认密码" v-model="upwds"><br/>
        验证码:<input type="text" placeholder="请输入图片验证码" v-model="test">
        <input type="text">
        <div>
            <span>注册即表示您同意努比亚账户的</span>
            <a href="#">用户协议</a>
            <span>和</span>
            <a href="#">隐私协议</a>
        </div>  
        <mt-button size="large" type="danger" @click="register">注册</mt-button>
    </div>
</template>
<script>
    export default{
        data(){
            return{
                uname:'',
                upwd:'',
                upwds:'',
                test:'',
            }
        },
        methods:{
            //1.左上角箭头返回home组件
            toHome(){
               this.$router.push('/Home') 
            },
            //2.组件中注册按钮的功能
            register(){
                //获取用户名和密码
                var uname=this.uname;
                var upwd=this.upwd;
                //创建用户名的正则表达式
            
                var reg1=/^[a-z]{3,8}$|^1[3-9]\d{9}$|^[a-z0-9]{2,10}@(qq|163|sohu|sina)\.com$/i;
                //验证用户名,出错提示
                if(!reg1.test(uname)){
                    this.$toast("用户名格式错误");
                    return;
                }
                //创建密码的正则表达式
                var regp=/^[a-z0-9][a-z0-9A-Z@#%^.*!~?|]{5,11}$/i;
                if(!regp.test(upwd)){
                    this.$toast("密码格式错误");
                    return;
                }
                if(upwd!=this.upwds){
                    this.$toast("两次密码输入不一致,请重新输入");
                    return;
                }
                //发送ajax请求
                var url="register";
                var obj={uname:uname,upwd:upwd};
                this.axios.get(url,{params:obj}).then(result=>{
                    if(result.data.code>0){
                        this.$router.push("/Home")
                    }else{
                        this.$messagebox("提示","注册失败")
                    }
                    
                });
            }
        },

    }
</script>
<style scoped>
    /* */
    
</style>