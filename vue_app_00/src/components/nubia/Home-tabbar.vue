<template>
<div> 
    <mt-tab-container v-model="selected">
        <mt-tab-container-item id="首页">
            <home-top></home-top>
            <home-swipe></home-swipe>
            <home-product></home-product> 
            <home-getproduct></home-getproduct>
        </mt-tab-container-item>
        <mt-tab-container-item id="分类">
           分类的内容
        </mt-tab-container-item>
        <mt-tab-container-item id="发现">
            <faxian></faxian>
        </mt-tab-container-item>
        <mt-tab-container-item id="购物车">
            <cart></cart>
        </mt-tab-container-item>
        <mt-tab-container-item id="我">
            我的页面
        </mt-tab-container-item>
    </mt-tab-container>
    <mt-tabbar v-model="selected" fixed>
        <mt-tab-item id="首页">
            <img slot="icon" src="../../assets/home-tabbar-img/shouye.png" v-if="this.selected=='首页'">
            <img slot="icon" src="../../assets/home-tabbar-img/shouye1.png" v-else >
            首页
        </mt-tab-item>
        <mt-tab-item id="分类">
            <img slot="icon" src="../../assets/home-tabbar-img/fenlei.png" v-if="this.selected=='分类'">
            <img slot="icon" src="../../assets/home-tabbar-img/fenlei1.png" v-else>
            分类
        </mt-tab-item>
        <mt-tab-item id="发现">
            <img slot="icon" src="../../assets/home-tabbar-img/find.png" v-if="this.selected=='发现'">
            <img slot="icon" src="../../assets/home-tabbar-img/find1.png" v-else>
            发现
        </mt-tab-item>
        <mt-tab-item id="购物车">
            <img slot="icon" src="../../assets/home-tabbar-img/gouwuche.png" v-if="this.selected=='购物车'">
            <img slot="icon" src="../../assets/home-tabbar-img/gouwuche1.png" v-else>
            购物车
        </mt-tab-item>
        <mt-tab-item id="我">
            <img slot="icon" src="../../assets/home-tabbar-img/wo.png" v-if="this.selected=='我'">
            <img slot="icon" src="../../assets/home-tabbar-img/wo1.png" v-else>
            我
        </mt-tab-item>
    </mt-tabbar>
</div>
</template>
<script>
    //1.引入Home-toptabbar.vue组件
    import HomeTop from './Home-toptabbar.vue'
    //2.引入swipe.vue轮播图组件
    import swipe from './Swipe.vue'
    //3.引入Product.vue商品详情组件
    import Product from './Product.vue'
    //4.引入Getproduct.vue 获取商品列表组件
    import Getproduct from './Getproduct.vue'
    //5.引入Cart.vue组件
    import Cart from './Cart.vue'
    //6.引入Faxian.vue组件
    import Faxian from './Faxian.vue'
    export default{
        data(){
            return{
                selected:"首页"
            }
        },
        //注册组件
        components:{
            "home-top":HomeTop,
            "home-swipe":swipe, 
            'home-product':Product,
            'home-getproduct':Getproduct,
            'cart':Cart,
            "faxian":Faxian,
        }
    }
</script>
<style scoped>
    .mint-tabbar>.mint-tab-item{
        color:#333;
    }
    /*修改tabbar 选中文字颜色 */
    .mint-tabbar>.mint-tab-item.is-selected{
        background-color:transparent;
        color:#d81e06;
    }
</style>