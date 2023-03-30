const base = {
    get() {
        return {
            url : "http://localhost:8080/lxgym/",
            name: "lxgym",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/lxgym/front/dist/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "“力炫”健身馆网站的设计与实现 "
        }
    }
}
export default base
