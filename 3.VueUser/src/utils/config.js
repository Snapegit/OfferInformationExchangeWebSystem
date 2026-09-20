const config = {
    get() {
        return {
            url : process.env.VUE_APP_BASE_API_URL + process.env.VUE_APP_BASE_API + '/',
            name: process.env.VUE_APP_BASE_API,
			menuList:[
				{
					name: '薪资爆料',
					icon: 'icon-common1',
					child:[
						{
							name:'薪资爆料',
							url:'/index/xinzibaoliaoList'
						},
					]
				},
				{
					name: '招聘信息',
					icon: 'icon-common2',
					child:[
						{
							name:'招聘信息',
							url:'/index/zhaopinxinxiList'
						},
					]
				},
				{
					name: '新闻资讯',
					icon: 'icon-common7',
					child:[
						{
							name:'新闻资讯',
							url:'/index/newsList'
						},
					]
				},
			]
        }
    },
    getProjectName(){
        return {
            projectName: "Offer资讯交流Web系统"
        } 
    }
}
export default config
