import Vue from 'vue'
import App from './App.vue'
import router from './router'
//以上三行不要动保存原来的位置
//原因:引入有顺序
//第三方组件库在下面引入
//1.完整引入mint-ui
import MintUI from 'mint-ui'
//2.单独引入mint-ui样式
import'mint-ui/lib/style.css'
//3.将mint-ui注册vue
Vue.use(MintUI);
//4.引入字体图标css文件
import "./font-img/iconfont.css"
//5.引入axios库
import axios from 'axios'
//6.发送ajax请求保存session信息
axios.defaults.withCredentials=true;
//7.配置axios基础路径
axios.defaults.baseURL="http://127.0.0.1:3000/"
//8.将axios注册到vue实例中
Vue.prototype.axios=axios;
Vue.config.productionTip = false
new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
