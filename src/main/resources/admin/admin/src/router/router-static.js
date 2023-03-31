import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import news from '@/views/modules/news/list'
    import jianshenkecheng from '@/views/modules/jianshenkecheng/list'
    import discussjianshenqicai from '@/views/modules/discussjianshenqicai/list'
    import jianshenqicai from '@/views/modules/jianshenqicai/list'
    import diaokeshenqing from '@/views/modules/diaokeshenqing/list'
    import discussjianshenjiaolian from '@/views/modules/discussjianshenjiaolian/list'
    import yuyuequxiao from '@/views/modules/yuyuequxiao/list'
    import jianshenjiaolian from '@/views/modules/jianshenjiaolian/list'
    import qicaizujie from '@/views/modules/qicaizujie/list'
    import yonghu from '@/views/modules/yonghu/list'
    import zaixianliuyan from '@/views/modules/zaixianliuyan/list'
    import messages from '@/views/modules/messages/list'
    import pingfenxinxi from '@/views/modules/pingfenxinxi/list'
    import orders from '@/views/modules/orders/list'
    import discussjianshenshangpin from '@/views/modules/discussjianshenshangpin/list'
    import shangpinleixing from '@/views/modules/shangpinleixing/list'
    import config from '@/views/modules/config/list'
    import xuankexinxi from '@/views/modules/xuankexinxi/list'
    import discussjianshenkecheng from '@/views/modules/discussjianshenkecheng/list'
    import jiaolianyuyue from '@/views/modules/jiaolianyuyue/list'
    import jianshenshangpin from '@/views/modules/jianshenshangpin/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '系统首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '系统首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
      ,{
	path: '/news',
        name: '健身资讯',
        component: news
      }
      ,{
	path: '/jianshenkecheng',
        name: '健身课程',
        component: jianshenkecheng
      }
      ,{
	path: '/discussjianshenqicai',
        name: '健身器材评论',
        component: discussjianshenqicai
      }
      ,{
	path: '/jianshenqicai',
        name: '健身器材',
        component: jianshenqicai
      }
      ,{
	path: '/diaokeshenqing',
        name: '调课申请',
        component: diaokeshenqing
      }
      ,{
	path: '/discussjianshenjiaolian',
        name: '健身教练评论',
        component: discussjianshenjiaolian
      }
      ,{
	path: '/yuyuequxiao',
        name: '预约取消',
        component: yuyuequxiao
      }
      ,{
	path: '/jianshenjiaolian',
        name: '健身教练',
        component: jianshenjiaolian
      }
      ,{
	path: '/qicaizujie',
        name: '器材租借',
        component: qicaizujie
      }
      ,{
	path: '/yonghu',
        name: '用户',
        component: yonghu
      }
      ,{
	path: '/zaixianliuyan',
        name: '在线留言',
        component: zaixianliuyan
      }
      ,{
	path: '/messages',
        name: '留言板管理',
        component: messages
      }
      ,{
	path: '/pingfenxinxi',
        name: '评分信息',
        component: pingfenxinxi
      }
      ,{
        path: '/orders/:status',
        name: '订单管理',
        component: orders
      }
      ,{
	path: '/discussjianshenshangpin',
        name: '健身商品评论',
        component: discussjianshenshangpin
      }
      ,{
	path: '/shangpinleixing',
        name: '商品类型',
        component: shangpinleixing
      }
      ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
      ,{
	path: '/xuankexinxi',
        name: '选课信息',
        component: xuankexinxi
      }
      ,{
	path: '/discussjianshenkecheng',
        name: '健身课程评论',
        component: discussjianshenkecheng
      }
      ,{
	path: '/jiaolianyuyue',
        name: '教练预约',
        component: jiaolianyuyue
      }
      ,{
	path: '/jianshenshangpin',
        name: '健身商品',
        component: jianshenshangpin
      }
    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '系统首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})
const originalPush = VueRouter.prototype.push
//修改原型对象中的push方法
VueRouter.prototype.push = function push(location) {
   return originalPush.call(this, location).catch(err => err)
}
export default router;
