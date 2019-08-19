<template>
    <!--Home组件中的顶部导航栏组件-->
    <div class="home-toptabbar">
            <img src="../../assets/home-toptabbar-img/logo.png" />
            
            <img @click="login" :src="img_url" > 
    </div>
</template>  
<script>
    export default {
        data(){
            return{
                value:"",
                img_url:require('../../assets/home-toptabbar-img/xinxi.png')
            }
        },
        methods:{
            login() {
                //跳转login组件
                this.$router.push('/Login');
            },
        } 
    }
</script>  
<style scoped>
    /*顶部导航栏整体的样式*/
    .home-toptabbar{
        display:flex;
        justify-content:space-between;
        align-items:center;
        width:100%;
        height:70px;
        background:#fff;
        color:#000;
        font:14px "微软雅黑";
        box-sizing:border-box;
        padding:10px; 
        position:fixed;
        z-index:99;
        
    }
    /*顶部导航栏左侧logo的图片 */
    .home-toptabbar img:first-child{
        width:90px;
        height:25px;
        margin-right:10px;
    }
    /*顶部导航栏搜索框的样式 */

    /*顶部导航栏右侧登录图片的样式 */
    .home-toptabbar img:last-child{
        width:30px;
        height:30px;
    }
    
</style>   