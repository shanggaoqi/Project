<template>
<div> 
    <mt-tab-container v-model="selected">
        <mt-tab-container-item id="首页">
            <home-top></home-top> 
            首页的内容
        </mt-tab-container-item>
        <mt-tab-container-item id="分类">
           分类的内容
        </mt-tab-container-item>
        <mt-tab-container-item id="发现">
            发现的内桶
        </mt-tab-container-item>
        <mt-tab-container-item id="购物车">
            购物的内容
        </mt-tab-container-item>
        <mt-tab-container-item id="我">
            我的页面
        </mt-tab-container-item>
    </mt-tab-container>
    <mt-tabbar v-model="selected" fixed>
        <mt-tab-item id="首页">
            <img slot="icon" src="../../assets/home-tabbar-img/shouye1.png" v-if="this.selected=='首页'">
            <img slot="icon" src="../../assets/home-tabbar-img/shouye.png" v-else >
            首页
        </mt-tab-item>
        <mt-tab-item id="分类">
            <img slot="icon" src="../../assets/home-tabbar-img/fenlei1.png" v-if="this.selected=='分类'">
            <img slot="icon" src="../../assets/home-tabbar-img/fenlei.png" v-else>
            分类
        </mt-tab-item>
        <mt-tab-item id="发现">
            <img slot="icon" src="../../assets/home-tabbar-img/faxian1.png" v-if="this.selected=='发现'">
            <img slot="icon" src="../../assets/home-tabbar-img/faxian.png" v-else>
            发现
        </mt-tab-item>
        <mt-tab-item id="购物车">
            <img slot="icon" src="../../assets/home-tabbar-img/gouwuche1.png" v-if="this.selected=='购物车'">
            <img slot="icon" src="../../assets/home-tabbar-img/gouwuche.png" v-else>
            购物车
        </mt-tab-item>
        <mt-tab-item id="我">
            <img slot="icon" src="../../assets/home-tabbar-img/wo1.png" v-if="this.selected=='我'">
            <img slot="icon" src="../../assets/home-tabbar-img/wo.png" v-else>
            我
        </mt-tab-item>
    </mt-tabbar>
</div>
</template>
<script>
        //1.引入Home-toptabbar.vue组件
    import HomeTop from './Home-toptabbar.vue'
    export default{
        data(){
            return{
                selected:"首页"
            }
        },
        components:{
            "home-top":HomeTop,
        }
    }
</script>
<style scoped>

</style>