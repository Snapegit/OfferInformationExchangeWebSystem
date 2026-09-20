const config = {
    get() {
        return {
            url : process.env.VUE_APP_BASE_API_URL + process.env.VUE_APP_BASE_API + '/',
            name: process.env.VUE_APP_BASE_API,
            // 退出到首页链接
            indexUrl: 'http://120.79.252.175:9003/cl0889870/client/index.html'
        }
    },
    getProjectName(){
        return {
            projectName: "Offer资讯交流Web系统"
        } 
    }
}
export default config
