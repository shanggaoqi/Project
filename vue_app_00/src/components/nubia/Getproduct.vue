<template>
    <!--这是获取商品列表的组件,分为两个部分,一个是手机设备,一个是手机配件部分-->
    <div class="box">
        <!--手机设备部分-->
        <div class="phone">
            <div>热销机型</div>
            <div>
                <img  src="../../assets/product-img/15639363093.jpg">
            </div>
            <div>
                <!--从数据库调取商品列表-->
                <div class="list" v-for="(item,i) of list" :key="i" @click="toDetail">
                    <img :src="'http://127.0.0.1:3000/'+item.img" alt="">
                    <div class="title">{{item.maintitle}}</div>
                    <div class="title2">{{item.subtitle}}</div>
                    <div class="price">
                        <span>¥{{item.price}}</span>
                        <del>{{item.secondprice}}</del>
                    </div>
                </div>
            </div>
            <div @click="phonelist" >查看更多手机>></div>
        </div>
        <!--手机配件部分-->
        <div class="part">
            <div>手机配件</div>
            <div>
                <img src="../../assets/product-img/155650720032.jpg">
            </div>
            <div>
                <!--从数据库调取商品列表-->
                <div  class="list" v-for="(item,i) of list2" :key="i" @click="toDetail">
                    <img :src="'http://127.0.0.1:3000/'+item.img" alt="">
                    <div class="title">{{item.title}}</div>
                    <div class="price">¥{{item.price}}</div>
                </div>
            </div>
            <div @click="partlist">查看更多配件及其周边产品>></div>
        </div>
        <!--底部导航-->
        <div class="info">
            <div class="d1">联系客服</div>
            <div class="d2">
                <span class="iconfont">&#xe609</span>
                <div class="p1">
                    <p>在线客服</p>
                    <p>7*24小时 全年无休</p>
                </div>
                <span class="iconfont">&#xe625</span>
            </div>
            <hr>
            <div class="d2">
                <span class="iconfont">&#xe61b</span>
                <div>
                    <p>客服热线400-700-6600</p>
                    <p>周一到周日 8:30-20:30 全年无休</p>
                </div>
                <span class="iconfont">&#xe625</span>
            </div>
        </div>
        <div class="end">没有更多了~</div>
    </div>
</template>
<script>
    export default {
        data(){
            return{
                list:[],
                list2:[],
            }
        },
        methods:{
            //跳转到商品列表phonelist组件
            phonelist(){
                this.$router.push('/Phonelist')
            },
            //跳转到商品列表partlist组件
            partlist(){
                this.$router.push('/Partlist')
            },
            //点击首页商品列表跳转到detail.vue组件
            toDetail(){
                this.$router.push('/Detail')
            },
        },
        created() {
            var url="phoneproduct";
            this.axios.get(url).then(result=>{
                this.list=result.data.data;
                //console.log(result.data.data)
            });
            var url="partproduct";
            this.axios.get(url).then(result=>{
                this.list2=result.data.data;
                //console.log(result.data.data)
            });
        },
    }
</script>
<style scoped>
    .box{
        height:2650px;
    }
    /*手机列表的样式*/
    .phone{
        background:#fff;
    }
    .phone div:first-child{
        color:#333;
        font-size:25px;
        padding:10px 20px;
    }
    .phone div:nth-child(2){
        width:100%;
    }
    .phone div:nth-child(2)>img{
        width:100%;
    }
    .phone div:nth-child(3){
        display:flex;
        flex-flow:row wrap;
        justify-content:space-between;
    }
    .phone div:nth-child(3) .list{
        width:49%;
        padding:0px;
    }
    .phone div:nth-child(3) .list>img{
        width:100%;
        background:#F4F3EF;
        margin-bottom:10px;
    }
    .phone div:nth-child(3) .list>.title{
        font-weight:bold;
        font-size:16px;
        color:#000;
        padding-left:10px;
        text-align:start;
    }
    .phone div:nth-child(3) .list>.title2{
        color:#8E8D8D;
        font-size:16.25px;
        padding-left:10px;
    }
    .phone div:nth-child(3) .list>.price{
        margin-bottom:10px;
        padding:0px;
        padding-left:4px;
        text-align:start;
    }
    .phone div:nth-child(3) .list>.price>span{
        color:#EF4123;
        font-size:16px;
        margin-right:4px;
    }
    .phone div:nth-child(3) .list>.price>del{
        color:#8E8D8D;
        font-size:12px;
    }
    .phone div:last-child{
        padding:20px 0;
        text-align:center;
        font-size:16px;
        color:#8E8D8D; 
        margin-bottom:8px;
    }
    /*手机配件列表的样式*/
    .part{
        background:#fff;
    }
    .part div:first-child{
        color:#333;
        font-size:25px;
        padding:10px 20px;
    }
    .part div:nth-child(2){
        width:100%;
    }
    .part div:nth-child(2)>img{
        width:100%;
    }
    .part div:nth-child(3){
        display:flex;
        flex-flow:row wrap;
        justify-content:space-between;
    }
    .part div:nth-child(3) .list{
        width:49%;
        padding:0px;
    }
    .part div:nth-child(3) .list>img{
        width:100%;
        background:#F4F3EF;
        margin-bottom:10px;
    }
    .part div:nth-child(3) .list>.title{
        font-weight:bold;
        font-size:16px;
        color:#000;
        padding-left:10px;
        text-align:start;
    }
    .part div:nth-child(3) .list>.price{
        color:#EF4123;
        font-size:16px;
        margin:4px 0 10px;
        padding:10px;
    }
    .part div:last-child{
        padding:20px 0;
        text-align:center;
        font-size:16px;
        color:#8E8D8D; 
        margin-bottom:8px;
    }
    /*底部信息的样式 */
    .info{
        padding:10px 10px 0px 10px;
        background:#fff;
    }
    .info .d1{
       font-size:25px;
       margin-left:10px;
    }
    .info .d2{
        display:flex;
        justify-content:space-between;
        align-items:center;
        padding:10px 0;
    }
    .info .d2 .iconfont:first-child{
        font-size:30px;
    }
    .info .d2 .p1{
        margin-left:-160px;
    }
    .info .d2 div{
        margin-left:-80px;
    }
    .info .d2 div p:first-child{
        margin:0px;
        margin-bottom:7px;
        font-size:20px;
        color:#1E1E1E;
    }
    .info .d2 div p:last-child{
        margin:0px;
        font-size:14px;
        color:#969696;
    }
    .box .end{
        width:100%;
        padding:20px 0;
        text-align:center;
        color:#9C9C9C;
        font-size:12px;
    }
</style>