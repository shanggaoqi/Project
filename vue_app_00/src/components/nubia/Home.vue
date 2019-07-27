<template>
    <div>
        <!--调用子组件-->
        <home-tabbar></home-tabbar>
    </div>
</template>
<script>
    //引入Home-tabbar.vue组件
    import HomeTabbar from './Home-tabbar.vue'
    export default{
        data(){
            return{
                selected:"首页"
            }
        },
        //注册子组件
        components:{
            "home-tabbar":HomeTabbar,
        }
    }
</script>
<style scoped>
</style>