<template>
    <div>
        <!--注册功能register-->
        <!--左上角图片和文字-->
        <img src="../../assets/login_img/back.png" @click="toHome" >
        <span>用户注册</span>
        <!--分割线-->
        <hr>
        <!--注册功能中的表单提交-->
        用户名:<input type="text" placeholder="用户名/邮箱/手机号"><br/>
        密码:<input type="password" placeholder="6-12个字符(不能含有下划线和特殊字符)"><br/>
        密码:<input type="password" placeholder="请再次确认密码"><br/>
        验证码:<input type="text" placeholder="请输入图片验证码">
        <input type="text">
        <div>
            <span>注册即表示您同意努比亚账户的</span>
            <a href="#">用户协议</a>
            <span>和</span>
            <a href="#">隐私协议</a>
        </div>  
        <mt-button size="large" type="danger">注册</mt-button>
    </div>
</template>
<script>
    export default{
        data(){
            return{

            }
        },
        methods:{

        },
    }
</script>
<style scoped>
    /* */
    
</style>