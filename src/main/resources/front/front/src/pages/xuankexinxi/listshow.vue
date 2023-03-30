<template>
    <div :style='{"width":"1000px","padding":"20px","margin":"10px auto","position":"relative","background":"#D8D8D8"}'>
        <el-button :style='{"border":"0","cursor":"pointer","padding":"0 10px","margin":"0 5px 0 0","outline":"none","color":"#fff","borderRadius":"4px","background":"#BECCBA","width":"auto","lineHeight":"40px","fontSize":"14px","height":"40px"}' type="warning" size="mini" @click="backClick" class="el-icon-back">返回</el-button>
        <div class="section-title" :style='{"margin":"10px 0","fontSize":"20px","lineHeight":"54px","color":"#333","textAlign":"center","background":"#f5f5f5"}'>选课信息</div>
        <el-table :data="tableData" style="width: 100%">
            <el-table-column label="订单号" align="center" width="130px">
                <template slot-scope="scope">
                    <span >{{ scope.row.dingdanbianhao }}</span>
                </template>
            </el-table-column>
            <el-table-column label="课程名称" align="center">
                <template slot-scope="scope">
                    <span >{{ scope.row.kechengmingcheng }}</span>
                </template>
            </el-table-column>
            <el-table-column label="课程类型">
                <template slot-scope="scope">
                    <span >{{ scope.row.kechengleixing }}</span>
                </template>
            </el-table-column>
            <el-table-column label="教练姓名">
                <template slot-scope="scope">
                    <span >{{ scope.row.jiaolianxingming }}</span>
                </template>
            </el-table-column>
            <el-table-column label="价格" width="60px">
                <template slot-scope="scope">
                    <span >{{ scope.row.jiage }}</span>
                </template>
            </el-table-column>
            <el-table-column label="下单时间" >
                <template slot-scope="scope">
                    <span >{{ scope.row.xiadanshijian }}</span>
                </template>
            </el-table-column>
            <el-table-column label="支付状态" >
                <template slot-scope="scope">
                    <span >{{ scope.row.ispay === ''?'未支付':scope.row.ispay }}</span>
                </template>
            </el-table-column>
            <el-table-column label="操作" >
                <template slot-scope="scope">
                    <el-button v-show="scope.row.ispay == '未支付' || scope.row.ispay === ''" type="success" :style='{"margin":"2px auto",}' size="mini" @click="deleteCourse(scope.row)">删除</el-button>
                    <el-button  v-show="scope.row.ispay == '未支付' || scope.row.ispay === ''" type="success" :style='{"margin":"2px auto",}' size="mini" @click="payment(scope.row)">支付</el-button>
                </template>
            </el-table-column>
        </el-table>
        <el-dialog title="用户充值" :visible.sync="dialogFormVisibleMoney" width="726px" center>
            <el-form >
                <span style="display: inline-block;margin-left: 20%;margin-bottom: 20px"> 支付金额 &nbsp;<b>{{ this.money }}</b>&nbsp; 元</span>
                <el-form-item label-width="120px">
                    <el-radio-group v-model="radio">
                        <el-radio style="margin-bottom: 30px" label="微信支付">
                            <el-image
                                    style="width: 60px; height: 60px;vertical-align: middle;"
                                    :src="require('@/assets/weixin.png')"
                                    fit="fill"></el-image>
                            <span style="display: inline-block;margin-left: 10px">微信支付</span>
                        </el-radio>
                        <el-radio label="支付宝支付">
                            <el-image
                                    style="width: 60px; height: 60px;vertical-align: middle;"
                                    :src="require('@/assets/zhifubao.png')"
                                    fit="fill"></el-image>
                            <span style="display: inline-block;margin-left: 10px">支付宝支付</span>
                        </el-radio>
                        <el-radio label="中国建设银行支付">
                            <el-image
                                    style="width: 120px; height: 60px;vertical-align: middle;"
                                    :src="require('@/assets/jianshe.png')"
                                    fit="fill"></el-image>
                        </el-radio>
                        <el-radio label="中国农业银行支付">
                            <el-image
                                    style="width: 126px; height: 60px;vertical-align: middle;"
                                    :src="require('@/assets/nongye.png')"
                                    fit="fill"></el-image>
                        </el-radio>
                        <el-radio label="中国银行支付">
                            <el-image
                                    style="width: 140px; height: 60px;vertical-align: middle;"
                                    :src="require('@/assets/zhongguo.png')"
                                    fit="fill"></el-image>
                        </el-radio>
                        <el-radio label="交通银行支付">
                            <el-image
                                    style="width: 120px; height: 60px;vertical-align: middle;"
                                    :src="require('@/assets/jiaotong.png')"
                                    fit="fill"></el-image>
                        </el-radio>
                    </el-radio-group>
                </el-form-item>
            </el-form>
            <div slot="footer" class="dialog-footer">
                <el-button @click="dialogFormVisibleMoney = false">取 消</el-button>
                <el-button type="primary" @click="topUp">确认充值</el-button>
            </div>
        </el-dialog>
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
                radio: '',
                dialogFormVisibleMoney: false,
                session: {},
                userTableName: localStorage.getItem('UserTableName'),
                logisticsVisible: false,
                logisticsText: '',
                ruleForm: {
                    money: '',
                    ispay: '已支付',
                    id: 0,
                }
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
                this.$http.get('xuankexinxi/page', {params: {page, limit: this.pageSize, crossuserid: localStorage.getItem('userid')}}).then(res => {
                    if (res.data.code == 0) {
                        this.tableData = res.data.data.list;
                        this.total = res.data.data.total;
                        this.pageSize = res.data.data.pageSize;this.pageSizes = [this.pageSize, this.pageSize*2, this.pageSize*3, this.pageSize*5];
                        this.totalPage = res.data.data.totalPage;
                    }
                });
            },
            deleteCourse(rowData){
                this.$http.get('xuankexinxi/deleteCourse?id='+rowData.id).then(res => {
                    if (res.data.code == 0) {
                        this.getMyOrderList(1);
                    }
                });
            },
            topUp(){
                this.$http.post('xuankexinxi/update', this.ruleForm).then(res => {
                    if (res.data.code == 0) {
                        this.dialogFormVisibleMoney = false;
                        this.getMyOrderList(1);
                    }
                });
            },
            payment(rowData){
                this.dialogFormVisibleMoney = true;
                this.ruleForm.money = rowData.jiage;
                this.ruleForm.id = rowData.id;
            }
        }
    }
</script>
