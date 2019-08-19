<template>
    <div class="container">
        <mt-header fixed title="产品热评">
            <mt-button icon="more" slot='right'></mt-button>
        </mt-header>
        <div style="padding-top:40px"></div>
        <div class="info" v-for="(item, i) of list" :key="i">
            <img :src="'http://127.0.0.1:3000/'+item.img" >
            <div class="text">
                <div>{{item.title}}</div>
                <div>{{item.subtitle}}</div>
                <div>
                    <span>{{item.pubdate}}</span>
                    <span class="iconfont">&#xe603&nbsp;{{item.pageview}}</span>
                </div>
            </div>
        </div>
        <mt-button size="large" type="default" disabled>没有更多了...</mt-button>
    </div>
</template>
<script>
    export default {
        data(){
            return{
               list:[],
            }
        },
        methods:{
            loadMore(){
                var url="faxian";
                this.axios.get(url).then(result=>{
                    this.list=result.data.data;
                    //console.log(this.list);
                })
            }
        },
        created(){
            this.loadMore();
        },
    }
</script>
<style scoped>
    .container{
        width:100%;
        height:4930px;
    }
    .container>.info{
        width:100%;
        margin-bottom:10px;
        background:#fff;
    }
    .container>.info>img{
        width:100%;
    }  
    .container>.info>.text{
        width:100%;
        box-sizing:border-box;
        padding:10px 25px;
    }
    .container>.info>.text div:first-child{
        padding:6px 0;
        font-size:16px;
        color:#4F4F4F;
        font-family:'微软雅黑';
        font-weight:bold;
    }
    .container>.info>.text div:nth-child(2){
        font-size:14px;
        color:#777777;
        font-family:'微软雅黑';
    }
    .container>.info>.text div:last-child{
        font-size:12px;
        color:#999999;
        margin:20px 0 10px;
        display:flex;
        justify-content:space-between;
    }
    .container>.info>.text div:last-child>.iconfont{
        font-size:12px;
        color:#999999;
    }
</style>