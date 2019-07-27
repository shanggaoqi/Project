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
Vue.use(Router)
//为组件配置路径
export default new Router({
  routes: [
    {path:'/',component:HelloContainer},
    {path:'/home',component:Home},
    {path:'/login',component:Login},
    {path:'/register',component:Register},
  ]
})
