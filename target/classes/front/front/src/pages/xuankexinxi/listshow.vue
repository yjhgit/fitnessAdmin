<template>
    <div :style='{"width":"1000px","padding":"20px","margin":"10px auto","position":"relative","background":"#D8D8D8"}'>
        <el-button :style='{"border":"0","cursor":"pointer","padding":"0 10px","margin":"0 5px 0 0","outline":"none","color":"#fff","borderRadius":"4px","background":"#BECCBA","width":"auto","lineHeight":"40px","fontSize":"14px","height":"40px"}' type="warning" size="mini" @click="backClick" class="el-icon-back">返回</el-button>
        <div class="section-title" :style='{"margin":"10px 0","fontSize":"20px","lineHeight":"54px","color":"#333","textAlign":"center","background":"#f5f5f5"}'>选课信息</div>
        <el-table :data="tableData" style="width: 100%">
            <el-table-column label="教练姓名" align="center" width="200px">
                <template slot-scope="scope">
                    <span >{{ scope.row.jiaolianxingming }}</span>
                </template>
            </el-table-column>
            <el-table-column label="姓名">
                <template slot-scope="scope">
                    <span >{{ scope.row.xingming }}</span>
                </template>
            </el-table-column>
            <el-table-column label="手机号">
                <template slot-scope="scope">
                    <span >{{ scope.row.shouji }}</span>
                </template>
            </el-table-column>
            <el-table-column label="预约时间" >
                <template slot-scope="scope">
                    <span >{{ scope.row.yuyueshijian }}</span>
                </template>
            </el-table-column>
            <el-table-column label="预约时段" >
                <template slot-scope="scope">
                    <span >{{ scope.row.timeFrame }}</span>
                </template>
            </el-table-column>
            <el-table-column label="预约状态" >
                <template slot-scope="scope">
                    <span v-show="scope.row.state == 0">已取消</span>
                    <span v-show="scope.row.state == 1">已预约</span>
                    <span v-show="scope.row.state == 2">已完成</span>
                </template>
            </el-table-column>
            <el-table-column label="操作" width="150">
                <template slot-scope="scope">
                    <el-button v-show="scope.row.state == 1" type="success" :style='{"margin":"2px auto",}' size="mini" @click="cancel(scope.row)">取消预约</el-button>
                </template>
            </el-table-column>
        </el-table>

    </div>
</template>

<script>
    export default {
        data() {
            return {
                tableData: [],
                total: 1,
                pageSize: 10,pageSizes: [10,20,30,50],
                totalPage: 1,
                session: {},
                userTableName: localStorage.getItem('UserTableName'),
                logisticsVisible: false,
                logisticsText: ''
            }
        },
        created() {
            this.getSession();
            this.getMyOrderList(1);
        },
        methods: {
            backClick() {
                this.$router.push('/index/center')
            },
            getSession() {
                this.$http.get(this.userTableName+'/session', {emulateJSON: true}).then(res => {
                    if (res.data.code == 0) {
                        this.session = res.data.data;
                    }
                });
            },
            getMyOrderList(page) {
                this.$http.get('jiaolianyuyue/page', {params: {page, limit: this.pageSize, yonghuming: localStorage.getItem('userid')}}).then(res => {
                    if (res.data.code == 0) {
                        this.tableData = res.data.data.list;
                        this.total = res.data.data.total;
                        this.pageSize = res.data.data.pageSize;this.pageSizes = [this.pageSize, this.pageSize*2, this.pageSize*3, this.pageSize*5];
                        this.totalPage = res.data.data.totalPage;
                    }
                });
            },
            cancel(rowData){
                this.$http.get('jiaolianyuyue/cancel?id='+rowData.id).then(res => {
                    if (res.data.code == 0) {
                        this.getMyOrderList(1);
                    }
                });
            }
        }
    }
</script>
