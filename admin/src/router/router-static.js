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
    import aboutus from '@/views/modules/aboutus/list'
    import pingjiaxinxi from '@/views/modules/pingjiaxinxi/list'
    import zhenduanbingli from '@/views/modules/zhenduanbingli/list'
    import systemnotice from '@/views/modules/systemnotice/list'
    import yuyuequxiao from '@/views/modules/yuyuequxiao/list'
    import keshixinxi from '@/views/modules/keshixinxi/list'
    import friendlink from '@/views/modules/friendlink/list'
    import yuyueguahao from '@/views/modules/yuyueguahao/list'
    import jibingxinxi from '@/views/modules/jibingxinxi/list'
    import chathelper from '@/views/modules/chathelper/list'
    import systemintro from '@/views/modules/systemintro/list'
    import yonghu from '@/views/modules/yonghu/list'
    import chat from '@/views/modules/chat/list'
    import jiuzhenxinxi from '@/views/modules/jiuzhenxinxi/list'
    import zaixianzixun from '@/views/modules/zaixianzixun/list'
    import yisheng from '@/views/modules/yisheng/list'
    import config from '@/views/modules/config/list'
    import zhengzhuangleixing from '@/views/modules/zhengzhuangleixing/list'
    import newstype from '@/views/modules/newstype/list'


//2.配置路由   注意：名字
export const routes = [{
    path: '/',
    name: '系统首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '系统首页',
      component: Home,
      meta: {icon:'', title:'center', affix: true}
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
        name: '新闻资讯',
        component: news
      }
      ,{
	path: '/aboutus',
        name: '关于我们',
        component: aboutus
      }
      ,{
	path: '/pingjiaxinxi',
        name: '评价信息',
        component: pingjiaxinxi
      }
      ,{
	path: '/zhenduanbingli',
        name: '诊断病历',
        component: zhenduanbingli
      }
      ,{
	path: '/systemnotice',
        name: '系统公告',
        component: systemnotice
      }
      ,{
	path: '/yuyuequxiao',
        name: '预约取消',
        component: yuyuequxiao
      }
      ,{
	path: '/keshixinxi',
        name: '科室信息',
        component: keshixinxi
      }
      ,{
	path: '/friendlink',
        name: '友情链接',
        component: friendlink
      }
      ,{
	path: '/yuyueguahao',
        name: '预约挂号',
        component: yuyueguahao
      }
      ,{
	path: '/jibingxinxi',
        name: '疾病信息',
        component: jibingxinxi
      }
      ,{
	path: '/chathelper',
        name: '智能助手',
        component: chathelper
      }
      ,{
	path: '/systemintro',
        name: '系统简介',
        component: systemintro
      }
      ,{
	path: '/yonghu',
        name: '用户',
        component: yonghu
      }
      ,{
	path: '/chat',
        name: '智能客服',
        component: chat
      }
      ,{
	path: '/jiuzhenxinxi',
        name: '就诊信息',
        component: jiuzhenxinxi
      }
      ,{
	path: '/zaixianzixun',
        name: '在线咨询',
        component: zaixianzixun
      }
      ,{
	path: '/yisheng',
        name: '医生',
        component: yisheng
      }
      ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
      ,{
	path: '/zhengzhuangleixing',
        name: '症状类型',
        component: zhengzhuangleixing
      }
      ,{
	path: '/newstype',
        name: '资讯分类',
        component: newstype
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
