<template>
<div class="content">
	<div class="text" :style='{"margin":"50px auto","fontSize":"32px","color":"#3191e1","textAlign":"center","background":"none","fontWeight":"bold"}'>欢迎使用 {{this.$project.projectName}}</div>
    <div class="cardView">
        <div class="cards" :style='{"margin":"0 0 20px 0","alignItems":"center","justifyContent":"center","display":"flex"}'>
			<div :style='{"border":"1px solid #eee","margin":"0 10px","borderRadius":"4px","background":"rgba(255,255,255,.6)","display":"flex"}' v-if="isAuth('pingfenxinxi','首页总数')">
				<div :style='{"borderColor":"#eee","borderRadius":"4px 0px 0px 4px","background":"none","borderWidth":"0 1px 0 0","width":"80px","borderStyle":"solid","height":"80px"}'></div>
				<div :style='{"alignItems":"center","borderRadius":"0px 4px 4px 0px","flexDirection":"column","background":"none","display":"flex","width":"160px","justifyContent":"center"}'>
					<div :style='{"margin":"5px 0","lineHeight":"24px","fontSize":"20px","color":"#666","height":"24px"}'>{{pingfenxinxiCount}}</div>
					<div :style='{"margin":"5px 0","lineHeight":"24px","fontSize":"14px","color":"#666","height":"24px"}'>评分信息总数</div>
				</div>
			</div>
			<div :style='{"border":"1px solid #eee","margin":"0 10px","borderRadius":"4px","background":"rgba(255,255,255,.6)","display":"flex"}' v-if="isAuth('xuankexinxi','首页总数')">
				<div :style='{"borderColor":"#eee","borderRadius":"4px 0px 0px 4px","background":"none","borderWidth":"0 1px 0 0","width":"80px","borderStyle":"solid","height":"80px"}'></div>
				<div :style='{"alignItems":"center","borderRadius":"0px 4px 4px 0px","flexDirection":"column","background":"none","display":"flex","width":"160px","justifyContent":"center"}'>
					<div :style='{"margin":"5px 0","lineHeight":"24px","fontSize":"20px","color":"#666","height":"24px"}'>{{xuankexinxiCount}}</div>
					<div :style='{"margin":"5px 0","lineHeight":"24px","fontSize":"14px","color":"#666","height":"24px"}'>选课信息总数</div>
				</div>
			</div>
			<div :style='{"border":"1px solid #eee","margin":"0 10px","borderRadius":"4px","background":"rgba(255,255,255,.6)","display":"flex"}' v-if="isAuth('jiaolianyuyue','首页总数')">
				<div :style='{"borderColor":"#eee","borderRadius":"4px 0px 0px 4px","background":"none","borderWidth":"0 1px 0 0","width":"80px","borderStyle":"solid","height":"80px"}'></div>
				<div :style='{"alignItems":"center","borderRadius":"0px 4px 4px 0px","flexDirection":"column","background":"none","display":"flex","width":"160px","justifyContent":"center"}'>
					<div :style='{"margin":"5px 0","lineHeight":"24px","fontSize":"20px","color":"#666","height":"24px"}'>{{jiaolianyuyueCount}}</div>
					<div :style='{"margin":"5px 0","lineHeight":"24px","fontSize":"14px","color":"#666","height":"24px"}'>教练预约总数</div>
				</div>
			</div>
        </div>
        <div style="display: flex;align-items: center;width: 100%;margin-bottom: 10px;">
            <el-card style="width: 25%;margin: 0 10px;" v-if="isAuth('pingfenxinxi','首页统计')">
                <div id="pingfenxinxiChart1" style="width:100%;height:400px;"></div>
            </el-card>
            <el-card style="width: 25%;margin: 0 10px;" v-if="isAuth('xuankexinxi','首页统计')">
                <div id="xuankexinxiChart1" style="width:100%;height:400px;"></div>
            </el-card>
            <el-card style="width: 25%;margin: 0 10px;" v-if="isAuth('xuankexinxi','首页统计')">
                <div id="xuankexinxiChart2" style="width:100%;height:400px;"></div>
            </el-card>
            <el-card style="width: 25%;margin: 0 10px;" v-if="isAuth('jiaolianyuyue','首页统计')">
                <div id="jiaolianyuyueChart1" style="width:100%;height:400px;"></div>
            </el-card>
        </div>
    </div>
</div>
</template>
<script>
//4
import router from '@/router/router-static'
import * as echarts from 'echarts'
export default {
	data() {
		return {
            pingfenxinxiCount: 0,
            xuankexinxiCount: 0,
            jiaolianyuyueCount: 0,
		};
	},
  mounted(){
    this.init();
    this.getpingfenxinxiCount();
    this.pingfenxinxiChat1();
    this.getxuankexinxiCount();
    this.xuankexinxiChat1();
    this.xuankexinxiChat2();
    this.getjiaolianyuyueCount();
    this.jiaolianyuyueChat1();
  },
  methods:{
    init(){
        if(this.$storage.get('Token')){
        this.$http({
            url: `${this.$storage.get('sessionTable')}/session`,
            method: "get"
        }).then(({ data }) => {
            if (data && data.code != 0) {
            router.push({ name: 'login' })
            }
        });
        }else{
            router.push({ name: 'login' })
        }
    },
    getpingfenxinxiCount() {
        this.$http({
            url: `pingfenxinxi/count`,
            method: "get"
        }).then(({
            data
        }) => {
            if (data && data.code == 0) {
                this.pingfenxinxiCount = data.data
            }
        })
    },

    pingfenxinxiChat1() {
      this.$nextTick(()=>{
        // jiaolianxingming jiaolianxingming
        //  pingfen

        var pingfenxinxiChart1 = echarts.init(document.getElementById("pingfenxinxiChart1"),'macarons');
        this.$http({
            url: `pingfenxinxi/value/jiaolianxingming/pingfen`,
            method: "get",
        }).then(({ data }) => {
            if (data && data.code === 0) {
                let res = data.data;
                let xAxis = [];
                let yAxis = [];
                let pArray = []
                for(let i=0;i<res.length;i++){
                    xAxis.push(res[i].jiaolianxingming);
                    yAxis.push(parseFloat((res[i].total)));
                    pArray.push({
                        value: parseFloat((res[i].total)),
                        name: res[i].jiaolianxingming
                    })
                }
                var option = {};
                option = {
                    title: {
                        text: '教练评分统计',
                        left: 'center'
                    },
                    tooltip: {
                      trigger: 'item',
                      formatter: '{b} : {c}'
                    },
                    xAxis: {
                        type: 'value'
                    },
                    yAxis: {
                        type: 'category',
                        data: xAxis
                    },
                    series: [{
                        data: yAxis,
                        type: 'bar'
                    }]
                };
                // 使用刚指定的配置项和数据显示图表。
                pingfenxinxiChart1.setOption(option);
                  //根据窗口的大小变动图表
                window.onresize = function() {
                    pingfenxinxiChart1.resize();
                };
            }
        });
      })
    },






    getxuankexinxiCount() {
        this.$http({
            url: `xuankexinxi/count`,
            method: "get"
        }).then(({
            data
        }) => {
            if (data && data.code == 0) {
                this.xuankexinxiCount = data.data
            }
        })
    },

    xuankexinxiChat1() {
      this.$nextTick(()=>{

        var xuankexinxiChart1 = echarts.init(document.getElementById("xuankexinxiChart1"),'roma');
        this.$http({
            url: "xuankexinxi/group/kechengmingcheng",
            method: "get",
        }).then(({ data }) => {
            if (data && data.code === 0) {
                let res = data.data;
                let xAxis = [];
                let yAxis = [];
                let pArray = []
                for(let i=0;i<res.length;i++){
                    xAxis.push(res[i].kechengmingcheng);
                    yAxis.push(parseFloat((res[i].total)));
                    pArray.push({
                        value: parseFloat((res[i].total)),
                        name: res[i].kechengmingcheng
                    })
                }
                var option = {};
                option = {
                    title: {
                        text: '课程人数统计',
                        left: 'center'
                    },
                    tooltip: {
                      trigger: 'item',
                      formatter: '{b} : {c}'
                    },
                    xAxis: {
                        type: 'category',
                        data: xAxis
                    },
                    yAxis: {
                        type: 'value'
                    },
                    series: [{
                        data: yAxis,
                        type: 'bar'
                    }]
                };
                // 使用刚指定的配置项和数据显示图表。
                xuankexinxiChart1.setOption(option);
                  //根据窗口的大小变动图表
                window.onresize = function() {
                    xuankexinxiChart1.resize();
                };
            }
        });
      })
    },

    xuankexinxiChat2() {
      this.$nextTick(()=>{

        var xuankexinxiChart2 = echarts.init(document.getElementById("xuankexinxiChart2"),'roma');
        this.$http({
            url: "xuankexinxi/group/xiadanshijian",
            method: "get",
        }).then(({ data }) => {
            if (data && data.code === 0) {
                let res = data.data;
                let xAxis = [];
                let yAxis = [];
                let pArray = []
                for(let i=0;i<res.length;i++){
                    xAxis.push(res[i].xiadanshijian);
                    yAxis.push(parseFloat((res[i].total)));
                    pArray.push({
                        value: parseFloat((res[i].total)),
                        name: res[i].xiadanshijian
                    })
                }
                var option = {};
                option = {
                    title: {
                        text: '每日选课人数统计',
                        left: 'center'
                    },
                    tooltip: {
                      trigger: 'item',
                      formatter: '{b} : {c}'
                    },
                    xAxis: {
                        type: 'category',
                        boundaryGap: false,
                        data: xAxis
                    },
                    yAxis: {
                        type: 'value'
                    },
                    series: [{
                        data: yAxis,
                        type: 'line',
                        areaStyle: {},
                        smooth: true
                    }]
                };
                // 使用刚指定的配置项和数据显示图表。
                xuankexinxiChart2.setOption(option);
                  //根据窗口的大小变动图表
                window.onresize = function() {
                    xuankexinxiChart2.resize();
                };
            }
        });
      })
    },





    getjiaolianyuyueCount() {
        this.$http({
            url: `jiaolianyuyue/count`,
            method: "get"
        }).then(({
            data
        }) => {
            if (data && data.code == 0) {
                this.jiaolianyuyueCount = data.data
            }
        })
    },

    jiaolianyuyueChat1() {
      this.$nextTick(()=>{

        var jiaolianyuyueChart1 = echarts.init(document.getElementById("jiaolianyuyueChart1"),'vintage');
        this.$http({
            url: "jiaolianyuyue/group/jiaolianxingming",
            method: "get",
        }).then(({ data }) => {
            if (data && data.code === 0) {
                let res = data.data;
                let xAxis = [];
                let yAxis = [];
                let pArray = []
                for(let i=0;i<res.length;i++){
                    xAxis.push(res[i].jiaolianxingming);
                    yAxis.push(parseFloat((res[i].total)));
                    pArray.push({
                        value: parseFloat((res[i].total)),
                        name: res[i].jiaolianxingming
                    })
                }
                var option = {};
                option = {
                    title: {
                        text: '预约人数统计',
                        left: 'center'
                    },
                    tooltip: {
                      trigger: 'item',
                      formatter: '{b} : {c}'
                    },
                    xAxis: {
                        type: 'category',
                        boundaryGap: false,
                        data: xAxis
                    },
                    yAxis: {
                        type: 'value'
                    },
                    series: [{
                        data: yAxis,
                        type: 'line',
                    }]
                };
                // 使用刚指定的配置项和数据显示图表。
                jiaolianyuyueChart1.setOption(option);
                  //根据窗口的大小变动图表
                window.onresize = function() {
                    jiaolianyuyueChart1.resize();
                };
            }
        });
      })
    },






  }
};
</script>
<style lang="scss" scoped>
    .cardView {
        display: flex;
        flex-wrap: wrap;
        width: 100%;

        .cards {
            display: flex;
            align-items: center;
            width: 100%;
            margin-bottom: 10px;
            justify-content: center;
            .card {
                width: calc(25% - 20px);
                margin: 0 10px;
                /deep/.el-card__body{
                    padding: 0;
                }
            }
        }
    }
</style>
