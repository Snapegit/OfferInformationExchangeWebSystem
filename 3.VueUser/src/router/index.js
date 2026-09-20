import { createRouter, createWebHashHistory } from 'vue-router'
import index from '../views'
import home from '../views/pages/home.vue'
import login from '../views/pages/login.vue'
import yonghuList from '@/views/pages/yonghu/list'
import yonghuDetail from '@/views/pages/yonghu/formModel'
import yonghuAdd from '@/views/pages/yonghu/formAdd'
import yonghuRegister from '@/views/pages/yonghu/register'
import yonghuCenter from '@/views/pages/yonghu/center'
import xinzibaoliaoList from '@/views/pages/xinzibaoliao/list'
import xinzibaoliaoDetail from '@/views/pages/xinzibaoliao/formModel'
import xinzibaoliaoAdd from '@/views/pages/xinzibaoliao/formAdd'
import zhaopinxinxiList from '@/views/pages/zhaopinxinxi/list'
import zhaopinxinxiDetail from '@/views/pages/zhaopinxinxi/formModel'
import zhaopinxinxiAdd from '@/views/pages/zhaopinxinxi/formAdd'
import gongzuorenyuanList from '@/views/pages/gongzuorenyuan/list'
import gongzuorenyuanDetail from '@/views/pages/gongzuorenyuan/formModel'
import gongzuorenyuanAdd from '@/views/pages/gongzuorenyuan/formAdd'
import xingyeleixingList from '@/views/pages/xingyeleixing/list'
import xingyeleixingDetail from '@/views/pages/xingyeleixing/formModel'
import xingyeleixingAdd from '@/views/pages/xingyeleixing/formAdd'
import newsList from '@/views/pages/news/list'
import zhaopinpiciList from '@/views/pages/zhaopinpici/list'
import zhaopinpiciDetail from '@/views/pages/zhaopinpici/formModel'
import zhaopinpiciAdd from '@/views/pages/zhaopinpici/formAdd'
import storeupList from '@/views/pages/storeup/list'

const routes = [{
		path: '/',
		redirect: '/index/home'
	},
	{
		path: '/index',
		component: index,
		children: [{
			path: 'home',
			component: home
		}
		, {
			path: 'yonghuList',
			component: yonghuList
		}, {
			path: 'yonghuDetail',
			component: yonghuDetail
		}, {
			path: 'yonghuAdd',
			component: yonghuAdd
		}
		, {
			path: 'yonghuCenter',
			component: yonghuCenter
		}
		, {
			path: 'xinzibaoliaoList',
			component: xinzibaoliaoList
		}, {
			path: 'xinzibaoliaoDetail',
			component: xinzibaoliaoDetail
		}, {
			path: 'xinzibaoliaoAdd',
			component: xinzibaoliaoAdd
		}
		, {
			path: 'zhaopinxinxiList',
			component: zhaopinxinxiList
		}, {
			path: 'zhaopinxinxiDetail',
			component: zhaopinxinxiDetail
		}, {
			path: 'zhaopinxinxiAdd',
			component: zhaopinxinxiAdd
		}
		, {
			path: 'gongzuorenyuanList',
			component: gongzuorenyuanList
		}, {
			path: 'gongzuorenyuanDetail',
			component: gongzuorenyuanDetail
		}, {
			path: 'gongzuorenyuanAdd',
			component: gongzuorenyuanAdd
		}
		, {
			path: 'xingyeleixingList',
			component: xingyeleixingList
		}, {
			path: 'xingyeleixingDetail',
			component: xingyeleixingDetail
		}, {
			path: 'xingyeleixingAdd',
			component: xingyeleixingAdd
		}
		, {
			path: 'newsList',
			component: newsList
		}
		, {
			path: 'zhaopinpiciList',
			component: zhaopinpiciList
		}, {
			path: 'zhaopinpiciDetail',
			component: zhaopinpiciDetail
		}, {
			path: 'zhaopinpiciAdd',
			component: zhaopinpiciAdd
		}
		, {
			path: 'storeupList',
			component: storeupList
		}
		]
	},
	{
		path: '/login',
		component: login
	}
	,{
		path: '/yonghuRegister',
		component: yonghuRegister
	}
]

const router = createRouter({
  history: createWebHashHistory(process.env.BASE_URL),
  routes
})

export default router
