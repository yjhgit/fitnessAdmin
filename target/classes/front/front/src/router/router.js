import VueRouter from 'vue-router'

//引入组件
import Index from '../pages'
import Home from '../pages/home/home'
import Login from '../pages/login/login'
import Register from '../pages/register/register'
import Center from '../pages/center/center'
import Messages from '../pages/messages/list'
import Storeup from '../pages/storeup/list'
import AddrList from '../pages/shop-address/list'
import AddrAdd from '../pages/shop-address/addOrUpdate'
import Order from '../pages/shop-order/list'
import OrderConfirm from '../pages/shop-order/confirm'
import Cart from '../pages/shop-cart/list'
import News from '../pages/news/news-list'
import NewsDetail from '../pages/news/news-detail'
import yonghuList from '../pages/yonghu/list'
import yonghuDetail from '../pages/yonghu/detail'
import yonghuAdd from '../pages/yonghu/add'
import jianshenjiaolianList from '../pages/jianshenjiaolian/list'
import jianshenjiaolianDetail from '../pages/jianshenjiaolian/detail'
import jianshenjiaolianAdd from '../pages/jianshenjiaolian/add'
import zaixianliuyanList from '../pages/zaixianliuyan/list'
import zaixianliuyanDetail from '../pages/zaixianliuyan/detail'
import zaixianliuyanAdd from '../pages/zaixianliuyan/add'
import pingfenxinxiList from '../pages/pingfenxinxi/list'
import pingfenxinxiDetail from '../pages/pingfenxinxi/detail'
import pingfenxinxiAdd from '../pages/pingfenxinxi/add'
import jianshenqicaiList from '../pages/jianshenqicai/list'
import jianshenqicaiDetail from '../pages/jianshenqicai/detail'
import jianshenqicaiAdd from '../pages/jianshenqicai/add'
import qicaizujieList from '../pages/qicaizujie/list'
import qicaizujieDetail from '../pages/qicaizujie/detail'
import qicaizujieAdd from '../pages/qicaizujie/add'
import jianshenkechengList from '../pages/jianshenkecheng/list'
import jianshenkechengDetail from '../pages/jianshenkecheng/detail'
import jianshenkechengAdd from '../pages/jianshenkecheng/add'
import xuankexinxiList from '../pages/xuankexinxi/list'
import xuankexinxiDetail from '../pages/xuankexinxi/detail'
import xuankexinxiAdd from '../pages/xuankexinxi/add'
import dakaxinxiList from '../pages/dakaxinxi/list'
import dakaxinxiDetail from '../pages/dakaxinxi/detail'
import dakaxinxiAdd from '../pages/dakaxinxi/add'
import jiaolianyuyueList from '../pages/jiaolianyuyue/list'
import jiaolianyuyueDetail from '../pages/jiaolianyuyue/detail'
import jiaolianyuyueAdd from '../pages/jiaolianyuyue/add'
import jiaolianyuyueListShow from '../pages/jiaolianyuyue/listshow'
import yuyuequxiaoList from '../pages/yuyuequxiao/list'
import yuyuequxiaoDetail from '../pages/yuyuequxiao/detail'
import yuyuequxiaoAdd from '../pages/yuyuequxiao/add'
import diaokeshenqingList from '../pages/diaokeshenqing/list'
import diaokeshenqingDetail from '../pages/diaokeshenqing/detail'
import diaokeshenqingAdd from '../pages/diaokeshenqing/add'
import shangpinleixingList from '../pages/shangpinleixing/list'
import shangpinleixingDetail from '../pages/shangpinleixing/detail'
import shangpinleixingAdd from '../pages/shangpinleixing/add'
import jianshenshangpinList from '../pages/jianshenshangpin/list'
import jianshenshangpinDetail from '../pages/jianshenshangpin/detail'
import jianshenshangpinAdd from '../pages/jianshenshangpin/add'

const originalPush = VueRouter.prototype.push
VueRouter.prototype.push = function push(location) {
	return originalPush.call(this, location).catch(err => err)
}

//配置路由
export default new VueRouter({
	routes:[
		{
      path: '/',
      redirect: '/index/home'
    },
		{
			path: '/index',
			component: Index,
			children:[
				{
					path: 'home',
					component: Home
				},
				{
					path: 'center',
					component: Center,
				},
				{
					path: 'messages',
					component: Messages
				},
				{
					path: 'storeup',
					component: Storeup
				},
                {
                    path: 'shop-address/list',
                    component: AddrList
                },
                {
                    path: 'shop-address/addOrUpdate',
                    component: AddrAdd
                },
				{
					path: 'shop-order/order',
					component: Order
				},
				{
					path: 'cart',
					component: Cart
				},
				{
					path: 'shop-order/orderConfirm',
					component: OrderConfirm
				},
				{
					path: 'news',
					component: News
				},
				{
					path: 'newsDetail',
					component: NewsDetail
				},
				{
					path: 'yonghu',
					component: yonghuList
				},
				{
					path: 'yonghuDetail',
					component: yonghuDetail
				},
				{
					path: 'yonghuAdd',
					component: yonghuAdd
				},
				{
					path: 'jianshenjiaolian',
					component: jianshenjiaolianList
				},
				{
					path: 'jianshenjiaolianDetail',
					component: jianshenjiaolianDetail
				},
				{
					path: 'jianshenjiaolianAdd',
					component: jianshenjiaolianAdd
				},
				{
					path: 'zaixianliuyan',
					component: zaixianliuyanList
				},
				{
					path: 'zaixianliuyanDetail',
					component: zaixianliuyanDetail
				},
				{
					path: 'zaixianliuyanAdd',
					component: zaixianliuyanAdd
				},
				{
					path: 'pingfenxinxi',
					component: pingfenxinxiList
				},
				{
					path: 'pingfenxinxiDetail',
					component: pingfenxinxiDetail
				},
				{
					path: 'pingfenxinxiAdd',
					component: pingfenxinxiAdd
				},
				{
					path: 'jianshenqicai',
					component: jianshenqicaiList
				},
				{
					path: 'jianshenqicaiDetail',
					component: jianshenqicaiDetail
				},
				{
					path: 'jianshenqicaiAdd',
					component: jianshenqicaiAdd
				},
				{
					path: 'qicaizujie',
					component: qicaizujieList
				},
				{
					path: 'qicaizujieDetail',
					component: qicaizujieDetail
				},
				{
					path: 'qicaizujieAdd',
					component: qicaizujieAdd
				},
				{
					path: 'jianshenkecheng',
					component: jianshenkechengList
				},
				{
					path: 'jianshenkechengDetail',
					component: jianshenkechengDetail
				},
				{
					path: 'jianshenkechengAdd',
					component: jianshenkechengAdd
				},
				{
					path: 'xuankexinxi',
					component: xuankexinxiList
				},
				{
					path: 'xuankexinxiDetail',
					component: xuankexinxiDetail
				},
				{
					path: 'xuankexinxiAdd',
					component: xuankexinxiAdd
				},
				{
					path: 'dakaxinxi',
					component: dakaxinxiList
				},
				{
					path: 'dakaxinxiDetail',
					component: dakaxinxiDetail
				},
				{
					path: 'dakaxinxiAdd',
					component: dakaxinxiAdd
				},
				{
					path: 'jiaolianyuyue',
					component: jiaolianyuyueList
				},
				{
					path: 'jiaolianyuyueDetail',
					component: jiaolianyuyueDetail
				},
				{
					path: 'jiaolianyuyueAdd',
					component: jiaolianyuyueAdd
				},
				{
					path: 'jiaolianyuyueListShow',
					component: jiaolianyuyueListShow
				},
				{
					path: 'yuyuequxiao',
					component: yuyuequxiaoList
				},
				{
					path: 'yuyuequxiaoDetail',
					component: yuyuequxiaoDetail
				},
				{
					path: 'yuyuequxiaoAdd',
					component: yuyuequxiaoAdd
				},
				{
					path: 'diaokeshenqing',
					component: diaokeshenqingList
				},
				{
					path: 'diaokeshenqingDetail',
					component: diaokeshenqingDetail
				},
				{
					path: 'diaokeshenqingAdd',
					component: diaokeshenqingAdd
				},
				{
					path: 'shangpinleixing',
					component: shangpinleixingList
				},
				{
					path: 'shangpinleixingDetail',
					component: shangpinleixingDetail
				},
				{
					path: 'shangpinleixingAdd',
					component: shangpinleixingAdd
				},
				{
					path: 'jianshenshangpin',
					component: jianshenshangpinList
				},
				{
					path: 'jianshenshangpinDetail',
					component: jianshenshangpinDetail
				},
				{
					path: 'jianshenshangpinAdd',
					component: jianshenshangpinAdd
				},
			]
		},
		{
			path: '/login',
			component: Login
		},
		{
			path: '/register',
			component: Register
		},
	]
})
