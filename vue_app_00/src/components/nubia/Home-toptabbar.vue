<template>
    <div class="home-toptabbar">
            <img src="../../assets/home-toptabbar-img/logo.png" />
            <div>
                <mt-search v-model="value" cancel-text="取消" placeholder="搜索">
                </mt-search>
            </div>
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
                //1.更换登录图片
                this.img_url=require('../../assets/home-toptabbar-img/xinxi1.png');
                //2.跳转login组件
                this.$router.push('/Login');
            },
        } 
    }
</script>  
<style scoped>
    /*顶部导航栏整体的样式*/
    .home-toptabbar{
        dispaly:flex;
        justify-content:space-around;
        align-items:center;
        width:375px;
        height:70px;
        background:#fff;
        color:#000;
        font:14px "微软雅黑";
        padding:10px 15px;
        border:1px solid red;
    }
    /*顶部导航栏左侧logo的图片 */
    .home-toptabbar img:first-child{
        width:90px;
        height:25px;
        margin-right:10px;
    }
    /*顶部导航栏搜索框的样式 */
    .home-toptabbar div >>> .mint-search{
        width:78%;
        height:35px;
        margin:0px;
    }

    .home-toptabbar div >>> .mint-search .mint-searchbar{
        padding:0px;
        border:1px solid black;
        border-radius:20px;

    }
    
    /*顶部导航栏右侧登录图片的样式 */
    .home-toptabbar img:last-child{
        width:30px;
        height:30px;
    }
    
</style>   