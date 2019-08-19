<template>
    <!--首页中的商品页介绍页-->
    <div class="container">
        <div class="left">
            <img src="../../assets/product-img/15564443224.jpg" alt="">
        </div>
        <div class="right">
            <div>
                <img src="../../assets/product-img/155902935039.jpg" alt="">
            </div>
            <div>
                <img src="../../assets/product-img/155954908247.jpg" alt="">
            </div>
        </div>
    </div>
</template>
<script>
    export default {
        data(){
            return{

            }
        },
        methods:{

        },

    }
</script>
<style scoped>
    .container{
        width:100%;
        margin:5px 0px;
        box-sizing:border-box;
        display:flex;
        justify-content:space-between;
    }
    .left{
        width:49%;
        height:270px;
    }
    .left>img{
        width:100%;
        height:100%;
    }
    .right{
        width:49%;
        height:270px;
    }
    .right div{
        width:100%;
        height:130px;
    }
    .right div:first-child{
        margin-bottom:10px;
    }
    .right div img{
        width:100%;
        height:130px;
    }
</style>