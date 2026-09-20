	import {
		createRouter,
		createWebHashHistory
	} from 'vue-router'
	import discusszhaopinxinxi from '@/views/discusszhaopinxinxi/list'
	import news from '@/views/news/list'
	import zhaopinxinxi from '@/views/zhaopinxinxi/list'
	import gongzuorenyuan from '@/views/gongzuorenyuan/list'
	import zhaopinpici from '@/views/zhaopinpici/list'
	import yonghu from '@/views/yonghu/list'
	import xingyeleixing from '@/views/xingyeleixing/list'
	import storeup from '@/views/storeup/list'
	import config from '@/views/config/list'
	import users from '@/views/users/list'
	import discussxinzibaoliao from '@/views/discussxinzibaoliao/list'
	import xinzibaoliao from '@/views/xinzibaoliao/list'
	import gongzuorenyuanRegister from '@/views/gongzuorenyuan/register'
	import gongzuorenyuanCenter from '@/views/gongzuorenyuan/center'

export const routes = [{
		path: '/login',
		name: 'login',
		component: () => import('../views/login.vue')
	},{
		path: '/',
		name: '首页',
		component: () => import('../views/index'),
		children: [{
			path: '/',
			name: '首页Home',
			component: () => import('../views/HomeView.vue'),
			meta: {
				affix: true
			}
		}, {
			path: '/updatepassword',
			name: '修改密码',
			component: () => import('../views/updatepassword.vue')
		}
		
		,{
			path: '/gongzuorenyuanCenter',
			name: '工作人员个人中心',
			component: gongzuorenyuanCenter
		}
		,{
			path: '/discusszhaopinxinxi',
			name: '招聘信息评论',
			component: discusszhaopinxinxi
		}
		,{
			path: '/news',
			name: '新闻资讯',
			component: news
		}
		,{
			path: '/zhaopinxinxi',
			name: '招聘信息',
			component: zhaopinxinxi
		}
		,{
			path: '/gongzuorenyuan',
			name: '工作人员',
			component: gongzuorenyuan
		}
		,{
			path: '/zhaopinpici',
			name: '招聘批次',
			component: zhaopinpici
		}
		,{
			path: '/yonghu',
			name: '用户',
			component: yonghu
		}
		,{
			path: '/xingyeleixing',
			name: '行业类型',
			component: xingyeleixing
		}
		,{
			path: '/storeup',
			name: '我的收藏',
			component: storeup
		}
		,{
			path: '/config',
			name: '轮播图',
			component: config
		}
		,{
			path: '/users',
			name: '管理员',
			component: users
		}
		,{
			path: '/discussxinzibaoliao',
			name: '薪资爆料评论',
			component: discussxinzibaoliao
		}
		,{
			path: '/xinzibaoliao',
			name: '薪资爆料',
			component: xinzibaoliao
		}
		]
	},
	{
		path: '/gongzuorenyuanRegister',
		name: '工作人员注册',
		component: gongzuorenyuanRegister
	},
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router
