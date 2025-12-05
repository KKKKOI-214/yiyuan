import VueRouter from 'vue-router'

//引入组件
import Index from '../pages'
import Home from '../pages/home/home'
import Login from '../pages/login/login'
import Register from '../pages/register/register'
import Center from '../pages/center/center'
import Storeup from '../pages/storeup/list'
import News from '../pages/news/news-list'
import NewsDetail from '../pages/news/news-detail'
import payList from '../pages/pay'

import yonghuList from '../pages/yonghu/list'
import yonghuDetail from '../pages/yonghu/detail'
import yonghuAdd from '../pages/yonghu/add'
import yishengList from '../pages/yisheng/list'
import yishengDetail from '../pages/yisheng/detail'
import yishengAdd from '../pages/yisheng/add'
import keshixinxiList from '../pages/keshixinxi/list'
import keshixinxiDetail from '../pages/keshixinxi/detail'
import keshixinxiAdd from '../pages/keshixinxi/add'
import zhengzhuangleixingList from '../pages/zhengzhuangleixing/list'
import zhengzhuangleixingDetail from '../pages/zhengzhuangleixing/detail'
import zhengzhuangleixingAdd from '../pages/zhengzhuangleixing/add'
import jibingxinxiList from '../pages/jibingxinxi/list'
import jibingxinxiDetail from '../pages/jibingxinxi/detail'
import jibingxinxiAdd from '../pages/jibingxinxi/add'
import jiuzhenxinxiList from '../pages/jiuzhenxinxi/list'
import jiuzhenxinxiDetail from '../pages/jiuzhenxinxi/detail'
import jiuzhenxinxiAdd from '../pages/jiuzhenxinxi/add'
import yuyueguahaoList from '../pages/yuyueguahao/list'
import yuyueguahaoDetail from '../pages/yuyueguahao/detail'
import yuyueguahaoAdd from '../pages/yuyueguahao/add'
import zhenduanbingliList from '../pages/zhenduanbingli/list'
import zhenduanbingliDetail from '../pages/zhenduanbingli/detail'
import zhenduanbingliAdd from '../pages/zhenduanbingli/add'
import pingjiaxinxiList from '../pages/pingjiaxinxi/list'
import pingjiaxinxiDetail from '../pages/pingjiaxinxi/detail'
import pingjiaxinxiAdd from '../pages/pingjiaxinxi/add'
import yuyuequxiaoList from '../pages/yuyuequxiao/list'
import yuyuequxiaoDetail from '../pages/yuyuequxiao/detail'
import yuyuequxiaoAdd from '../pages/yuyuequxiao/add'
import zaixianzixunList from '../pages/zaixianzixun/list'
import zaixianzixunDetail from '../pages/zaixianzixun/detail'
import zaixianzixunAdd from '../pages/zaixianzixun/add'
import chathelperList from '../pages/chathelper/list'
import chathelperDetail from '../pages/chathelper/detail'
import chathelperAdd from '../pages/chathelper/add'
import newstypeList from '../pages/newstype/list'
import newstypeDetail from '../pages/newstype/detail'
import newstypeAdd from '../pages/newstype/add'
import aboutusList from '../pages/aboutus/list'
import aboutusDetail from '../pages/aboutus/detail'
import aboutusAdd from '../pages/aboutus/add'
import systemintroList from '../pages/systemintro/list'
import systemintroDetail from '../pages/systemintro/detail'
import systemintroAdd from '../pages/systemintro/add'
import systemnoticeList from '../pages/systemnotice/list'
import systemnoticeDetail from '../pages/systemnotice/detail'
import systemnoticeAdd from '../pages/systemnotice/add'
import friendlinkList from '../pages/friendlink/list'
import friendlinkDetail from '../pages/friendlink/detail'
import friendlinkAdd from '../pages/friendlink/add'

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
					path: 'pay',
					component: payList,
				},
				{
					path: 'storeup',
					component: Storeup
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
					path: 'yisheng',
					component: yishengList
				},
				{
					path: 'yishengDetail',
					component: yishengDetail
				},
				{
					path: 'yishengAdd',
					component: yishengAdd
				},
				{
					path: 'keshixinxi',
					component: keshixinxiList
				},
				{
					path: 'keshixinxiDetail',
					component: keshixinxiDetail
				},
				{
					path: 'keshixinxiAdd',
					component: keshixinxiAdd
				},
				{
					path: 'zhengzhuangleixing',
					component: zhengzhuangleixingList
				},
				{
					path: 'zhengzhuangleixingDetail',
					component: zhengzhuangleixingDetail
				},
				{
					path: 'zhengzhuangleixingAdd',
					component: zhengzhuangleixingAdd
				},
				{
					path: 'jibingxinxi',
					component: jibingxinxiList
				},
				{
					path: 'jibingxinxiDetail',
					component: jibingxinxiDetail
				},
				{
					path: 'jibingxinxiAdd',
					component: jibingxinxiAdd
				},
				{
					path: 'jiuzhenxinxi',
					component: jiuzhenxinxiList
				},
				{
					path: 'jiuzhenxinxiDetail',
					component: jiuzhenxinxiDetail
				},
				{
					path: 'jiuzhenxinxiAdd',
					component: jiuzhenxinxiAdd
				},
				{
					path: 'yuyueguahao',
					component: yuyueguahaoList
				},
				{
					path: 'yuyueguahaoDetail',
					component: yuyueguahaoDetail
				},
				{
					path: 'yuyueguahaoAdd',
					component: yuyueguahaoAdd
				},
				{
					path: 'zhenduanbingli',
					component: zhenduanbingliList
				},
				{
					path: 'zhenduanbingliDetail',
					component: zhenduanbingliDetail
				},
				{
					path: 'zhenduanbingliAdd',
					component: zhenduanbingliAdd
				},
				{
					path: 'pingjiaxinxi',
					component: pingjiaxinxiList
				},
				{
					path: 'pingjiaxinxiDetail',
					component: pingjiaxinxiDetail
				},
				{
					path: 'pingjiaxinxiAdd',
					component: pingjiaxinxiAdd
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
					path: 'zaixianzixun',
					component: zaixianzixunList
				},
				{
					path: 'zaixianzixunDetail',
					component: zaixianzixunDetail
				},
				{
					path: 'zaixianzixunAdd',
					component: zaixianzixunAdd
				},
				{
					path: 'chathelper',
					component: chathelperList
				},
				{
					path: 'chathelperDetail',
					component: chathelperDetail
				},
				{
					path: 'chathelperAdd',
					component: chathelperAdd
				},
				{
					path: 'newstype',
					component: newstypeList
				},
				{
					path: 'newstypeDetail',
					component: newstypeDetail
				},
				{
					path: 'newstypeAdd',
					component: newstypeAdd
				},
				{
					path: 'aboutus',
					component: aboutusList
				},
				{
					path: 'aboutusDetail',
					component: aboutusDetail
				},
				{
					path: 'aboutusAdd',
					component: aboutusAdd
				},
				{
					path: 'systemintro',
					component: systemintroList
				},
				{
					path: 'systemintroDetail',
					component: systemintroDetail
				},
				{
					path: 'systemintroAdd',
					component: systemintroAdd
				},
				{
					path: 'systemnotice',
					component: systemnoticeList
				},
				{
					path: 'systemnoticeDetail',
					component: systemnoticeDetail
				},
				{
					path: 'systemnoticeAdd',
					component: systemnoticeAdd
				},
				{
					path: 'friendlink',
					component: friendlinkList
				},
				{
					path: 'friendlinkDetail',
					component: friendlinkDetail
				},
				{
					path: 'friendlinkAdd',
					component: friendlinkAdd
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
