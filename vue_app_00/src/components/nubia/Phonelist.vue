<template>
    <div class="container">
        <mt-header title="手机">
            <router-link to="/home" slot="left">
                <mt-button icon="back">返回</mt-button>
            </router-link>
            <mt-button icon="more" slot="right"></mt-button>
        </mt-header>
        <div class="list" v-for="(item,i) of list" :key="i" @click="toDetail">
            <img :src="'http://127.0.0.1:3000/'+item.img" alt="">
            <div>
                <p>{{item.maintitle}}</p>
                <span>¥&nbsp;{{item.price}}&nbsp;</span>
                <del>{{item.secondprice}}</del>
            </div>
        </div>
        <mt-button size="large" type="primary" @click="loadMore">加载更多</mt-button>
    </div>     
</template>
<script>
    export default {
        data(){
            return{
                list:[],
                pno:0,//页码
                ps:4  //页大小
            }
        },
        methods:{
            loadMore(){
               var url="phonelist";
               //将当前页码加1
               this.pno++;
               //创建参数对象
               var obj={pno:this.pno,pagesize:this.ps}
                this.axios.get(url,{params:obj}).then(result=>{
                    //数据的覆盖
                    //this.list=result.data.data;
                    //console.log(this.list)
                    var rows=this.list.concat(result.data.data);
                    this.list=rows;
                    //console.log(this.list)
                });
            },
            //点击手机每个商品列表跳转到detail.vue组件
            toDetail(){
                this.$router.push('/Detail')
            }
        },
        created(){
            this.loadMore()
        }
    }
</script>
<style scoped>
    .container .list{
        width:100%;
        padding:0 10px;
        display:flex;
        border-bottom:1px solid #F5F5F5;
        background:#fff;
    }
    .list img{
        width:100px;
        height:120px;
        padding:15px 0;
    }
    .list div{
        padding:20px 0px 20px 20px;
    }
    .list div>p{
        font-size:20px;
        font-weight:bold;
        margin:0px;
        padding-bottom:30px;
    }
    .list div>span{
        color:#FF5E5E;
        font-size:17px;
    }
    .list div>del{
        color:#8B8B8B;
        font-size:16px;
    }
</style>