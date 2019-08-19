<template>
    <!--这是home组件中的轮播图组件-->
    <div>
        <mt-swipe :auto="4000">
            <mt-swipe-item>
                <img src="../../assets/swipe-img/156137463885.jpg" alt="">
            </mt-swipe-item>
            <mt-swipe-item>
                <img src="../../assets/swipe-img/156393612949.jpg" alt="">
            </mt-swipe-item>
            <mt-swipe-item>
                <img src="../../assets/swipe-img/156393627612.jpg" alt="">
            </mt-swipe-item>
             <mt-swipe-item>
                <img src="../../assets/swipe-img/156393624130.jpg" alt="">
            </mt-swipe-item>
        </mt-swipe>
    </div>
</template>
<script>
    export default {
        data(){
            return{

            }
        }
    }
</script>
<style scoped>
    div{
        width:100%;
        height:260px;
    }
    img{
        width:100%;
        height:260px;
    }
</style>