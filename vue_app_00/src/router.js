import Vue from 'vue'
import Router from 'vue-router'
//自定义组件
import HelloContainer from "./components/HelloWorld.vue"
//引入Home.vue组件
import Home from './components/nubia/Home.vue'
//引入Login.vue组件
import Login from './components/nubia/Login.vue'
//引入Register.vue组件
import Register from "./components/nubia/Register.vue"
//引入 Phonelist.vue组件
import Phonelist from "./components/nubia/Phonelist.vue"
//引入 Partlist.vue组件
import Partlist from "./components/nubia/Partlist.vue"
//引入 Detail.vue组件
import Detail from './components/nubia/Detail.vue'
Vue.use(Router)
console1
//为组件配置路径
export default new Router({
  routes: [
    {path:'/',component:HelloContainer},
    {path:'/home',component:Home},
    {path:'/login',component:Login},
    {path:'/register',component:Register},
    {path:'/phonelist',component:Phonelist},
    {path:'/partlist',component:Partlist},
    {path:'/detail',component:Detail},
  ]
})
