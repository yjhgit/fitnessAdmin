<template>
<div :style='{"width":"1000px","padding":"20px","margin":"10px auto","position":"relative","background":"#D8D8D8"}'>
    <el-form
      class="add-update-preview"
      ref="ruleForm"
      :model="ruleForm"
      :rules="rules"
      label-width="110px"
    >
          <el-form-item :style='{"width":"100%","padding":"10px","margin":"0 2% 10px","display":"inline-block"}' label="器材名称" prop="qicaimingcheng">
            <el-select  @change="qicaimingchengChange" v-model="ruleForm.qicaimingcheng" placeholder="请选择器材名称">
              <el-option
                  v-for="(item,index) in qicaimingchengOptions"
                  :key="index"
                  :label="item"
                  :value="item">
              </el-option>
            </el-select>
          </el-form-item>
          <el-form-item :style='{"width":"100%","padding":"10px","margin":"0 2% 10px","display":"inline-block"}' label="器材类型" prop="qicaileixing">
            <el-input v-model="ruleForm.qicaileixing" 
                placeholder="器材类型" clearable ></el-input>
          </el-form-item>
          <el-form-item :style='{"width":"100%","padding":"10px","margin":"0 2% 10px","display":"inline-block"}' label="租借数量" prop="zujieshuliang">
            <el-input v-model="ruleForm.zujieshuliang" 
                placeholder="租借数量" clearable ></el-input>
          </el-form-item>
          <el-form-item :style='{"width":"100%","padding":"10px","margin":"0 2% 10px","display":"inline-block"}' label="租赁时间" prop="zulinshijian" disabled>
              <el-date-picker
                  value-format="yyyy-MM-dd HH:mm:ss"
                  v-model="ruleForm.zulinshijian" 
                  type="datetime"
                  placeholder="租赁时间">
              </el-date-picker>
          </el-form-item>
          <el-form-item :style='{"width":"100%","padding":"10px","margin":"0 2% 10px","display":"inline-block"}' label="租赁说明" prop="zulinshuoming">
            <el-input v-model="ruleForm.zulinshuoming" 
                placeholder="租赁说明" clearable ></el-input>
          </el-form-item>
          <el-form-item :style='{"width":"100%","padding":"10px","margin":"0 2% 10px","display":"inline-block"}' label="租借人" prop="zujieren">
            <el-input v-model="ruleForm.zujieren" 
                placeholder="租借人" clearable ></el-input>
          </el-form-item>
          <el-form-item :style='{"width":"100%","padding":"10px","margin":"0 2% 10px","display":"inline-block"}' label="手机" prop="shouji">
            <el-input v-model="ruleForm.shouji" 
                placeholder="手机" clearable ></el-input>
          </el-form-item>
          <el-form-item :style='{"width":"100%","padding":"10px","margin":"0 2% 10px","display":"inline-block"}'  label="状态" prop="zhuangtai">
            <el-select v-model="ruleForm.zhuangtai" placeholder="请选择状态"  >
              <el-option
                  v-for="(item,index) in zhuangtaiOptions"
                  :key="index"
                  :label="item"
                  :value="item">
              </el-option>
            </el-select>
          </el-form-item>

      <el-form-item :style='{"padding":"0","margin":"0"}'>
        <el-button :style='{"border":"0","cursor":"pointer","padding":"0","margin":"0 20px 0 0","outline":"none","color":"rgba(255, 255, 255, 1)","borderRadius":"4px","background":"#768169","width":"128px","lineHeight":"40px","fontSize":"14px","height":"40px"}'  type="primary" @click="onSubmit">提交</el-button>
        <el-button :style='{"border":"1px solid #fff","cursor":"pointer","padding":"0","margin":"0","outline":"none","color":"#fff","borderRadius":"4px","background":"#D8D8D8","width":"128px","lineHeight":"40px","fontSize":"14px","height":"40px"}' @click="back()">返回</el-button>
      </el-form-item>
    </el-form>
</div>
</template>

<script>
  export default {
    data() {
      return {
        id: '',
        baseUrl: '',
        ro:{
            qicaimingcheng : false,
            qicaileixing : false,
            zujieshuliang : false,
            zulinshijian : false,
            zulinshuoming : false,
            zujieren : false,
            shouji : false,
            zhuangtai : false,
        },
        type: '',
        userTableName: localStorage.getItem('UserTableName'),
        ruleForm: {
          qicaimingcheng: '',
          qicaileixing: '',
          zujieshuliang: '',
          zulinshijian: '',
          zulinshuoming: '',
          zujieren: '',
          shouji: '',
          zhuangtai: '',
        },
        qicaimingchengOptions: [],
        zhuangtaiOptions: [],
        rules: {
          qicaimingcheng: [
            { required: true, message: '器材名称不能为空', trigger: 'blur' },
          ],
          qicaileixing: [
          ],
          zujieshuliang: [
            { required: true, message: '租借数量不能为空', trigger: 'blur' },
            { validator: this.$validate.isIntNumer, trigger: 'blur' },
          ],
          zulinshijian: [
          ],
          zulinshuoming: [
            { required: true, message: '租赁说明不能为空', trigger: 'blur' },
          ],
          zujieren: [
            { required: true, message: '租借人不能为空', trigger: 'blur' },
          ],
          shouji: [
            { required: true, message: '手机不能为空', trigger: 'blur' },
            { validator: this.$validate.isMobile, trigger: 'blur' },
          ],
          zhuangtai: [
            { required: true, message: '状态不能为空', trigger: 'blur' },
          ],
        },
      };
    },
    computed: {



    },
    created() {
	  //this.bg();
      let type = this.$route.query.type ? this.$route.query.type : '';
      this.init(type);
      this.baseUrl = this.$config.baseUrl;
      this.ruleForm.zulinshijian = this.getCurDateTime()
    },
    methods: {
      getMakeZero(s) {
          return s < 10 ? '0' + s : s;
      },
      // 下载
      download(file){
        window.open(`${file}`)
      },
      // 初始化
      init(type) {
        this.type = type;
        if(type=='cross'){
          var obj = JSON.parse(localStorage.getItem('crossObj'));
          for (var o in obj){
            if(o=='qicaimingcheng'){
              this.ruleForm.qicaimingcheng = obj[o];
              this.ro.qicaimingcheng = true;
              continue;
            }
            if(o=='qicaileixing'){
              this.ruleForm.qicaileixing = obj[o];
              this.ro.qicaileixing = true;
              continue;
            }
            if(o=='zujieshuliang'){
              this.ruleForm.zujieshuliang = obj[o];
              this.ro.zujieshuliang = true;
              continue;
            }
            if(o=='zulinshijian'){
              this.ruleForm.zulinshijian = obj[o];
              this.ro.zulinshijian = true;
              continue;
            }
            if(o=='zulinshuoming'){
              this.ruleForm.zulinshuoming = obj[o];
              this.ro.zulinshuoming = true;
              continue;
            }
            if(o=='zujieren'){
              this.ruleForm.zujieren = obj[o];
              this.ro.zujieren = true;
              continue;
            }
            if(o=='shouji'){
              this.ruleForm.shouji = obj[o];
              this.ro.shouji = true;
              continue;
            }
            if(o=='zhuangtai'){
              this.ruleForm.zhuangtai = obj[o];
              this.ro.zhuangtai = true;
              continue;
            }
          }
        }
        // 获取用户信息
        this.$http.get(this.userTableName + '/session', {emulateJSON: true}).then(res => {
          if (res.data.code == 0) {
            var json = res.data.data;
          }
        });
        this.$http.get('option/jianshenqicai/qicaimingcheng', {emulateJSON: true}).then(res => {
          if (res.data.code == 0) {
            this.qicaimingchengOptions = res.data.data;
          }
        });
        this.zhuangtaiOptions = "未归还,已归还".split(',')
      },
      // 下二随
      qicaimingchengChange () {
        this.$http.get('follow/jianshenqicai/qicaimingcheng?columnValue=' + this.ruleForm.qicaimingcheng, {emulateJSON: true}).then(res => {
          if (res.data.code == 0) {
            if(res.data.data.qicaileixing){
              this.ruleForm.qicaileixing = res.data.data.qicaileixing
            }
          }
        });
      },

    // 多级联动参数
      // 多级联动参数
      info(id) {
        this.$http.get('qicaizujie/detail/${id}', {emulateJSON: true}).then(res => {
          if (res.data.code == 0) {
            this.ruleForm = res.data.data;
          }
        });
      },
      // 提交
      onSubmit() {

        //更新跨表属性
        var crossuserid;
        var crossrefid;
        var crossoptnum;
        this.$refs["ruleForm"].validate(valid => {
          if(valid) {
            if(this.type=='cross'){
                 var statusColumnName = localStorage.getItem('statusColumnName');
                 var statusColumnValue = localStorage.getItem('statusColumnValue');
                 if(statusColumnName && statusColumnName!='') {
                     var obj = JSON.parse(localStorage.getItem('crossObj'));
                     if(!statusColumnName.startsWith("[")) {
                         for (var o in obj){
                             if(o==statusColumnName){
                                 obj[o] = statusColumnValue;
                             }
                         }
                         var table = localStorage.getItem('crossTable');
                         this.$http.post(table+'/update', obj).then(res => {});
                     } else {
                            crossuserid=Number(localStorage.getItem('userid'));
                            crossrefid=obj['id'];
                            crossoptnum=localStorage.getItem('statusColumnName');
                            crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
                     }
                 }
            }
            if(crossrefid && crossuserid) {
                 this.ruleForm.crossuserid=crossuserid;
                 this.ruleForm.crossrefid=crossrefid;
                 var params = {
                     page: 1,
                     limit: 10,
                     crossuserid:crossuserid,
                     crossrefid:crossrefid,
                 }
                 this.$http.get('qicaizujie/list', {
                  params: params
                 }).then(res => {
                     if(res.data.data.total>=crossoptnum) {
                         this.$message({
                          message: localStorage.getItem('tips'),
                          type: 'success',
                          duration: 1500,
                         });
                          return false;
                     } else {
                         // 跨表计算


                          this.$http.post('qicaizujie/add', this.ruleForm).then(res => {
                              if (res.data.code == 0) {
                                  this.$message({
                                      message: '操作成功',
                                      type: 'success',
                                      duration: 1500,
                                      onClose: () => {
                                          this.$router.go(-1);
                                      }
                                  });
                              } else {
                                  this.$message({
                                      message: res.data.msg,
                                      type: 'error',
                                      duration: 1500
                                  });
                              }
                          });
                     }
                 });
             } else {


                  this.$http.post('qicaizujie/add', this.ruleForm).then(res => {
                     if (res.data.code == 0) {
                          this.$message({
                              message: '操作成功',
                              type: 'success',
                              duration: 1500,
                              onClose: () => {
                                  this.$router.go(-1);
                              }
                          });
                      } else {
                          this.$message({
                              message: res.data.msg,
                              type: 'error',
                              duration: 1500
                          });
                      }
                  });
             }
          }
        });
      },
      // 获取uuid
      getUUID () {
        return new Date().getTime();
      },
      // 返回
      back() {
        this.$router.go(-1);
      },
    }
  };
</script>

<style rel="stylesheet/scss" lang="scss" scoped>
	.el-date-editor.el-input {
		width: auto;
	}
	
	.add-update-preview .el-form-item /deep/ .el-form-item__label {
	  padding: 0 10px 0 0;
	  color: #666;
	  font-weight: 500;
	  width: 110px;
	  font-size: 14px;
	  line-height: 40px;
	  text-align: center;
	}
	
	.add-update-preview .el-form-item /deep/ .el-form-item__content {
	  margin-left: 110px;
	}
	
	.add-update-preview .el-input /deep/ .el-input__inner {
	  border: 0;
	  border-radius: 4px;
	  padding: 0 12px;
	  outline: none;
	  color: #000;
	  width: 100%;
	  font-size: 14px;
	  height: 40px;
	}
	
	.add-update-preview .el-select /deep/ .el-input__inner {
	  border: 0;
	  border-radius: 4px;
	  padding: 0 10px;
	  outline: none;
	  color: #000;
	  width: 100%;
	  font-size: 14px;
	  height: 40px;
	}
	
	.add-update-preview .el-date-editor /deep/ .el-input__inner {
	  border: 0;
	  border-radius: 4px;
	  padding: 0 10px 0 30px;
	  outline: none;
	  color: #000;
	  width: 100%;
	  font-size: 14px;
	  height: 40px;
	}
	
	.add-update-preview /deep/ .el-upload--picture-card {
		background: transparent;
		border: 0;
		border-radius: 0;
		width: auto;
		height: auto;
		line-height: initial;
		vertical-align: middle;
	}
	
	.add-update-preview /deep/ .upload .upload-img {
	  border: 1px dashed #000;
	  cursor: pointer;
	  border-radius: 6px;
	  color: #000;
	  width: 100px;
	  font-size: 32px;
	  line-height: 100px;
	  text-align: center;
	  height: 100px;
	}
	
	.add-update-preview /deep/ .el-upload-list .el-upload-list__item {
	  border: 1px dashed #000;
	  cursor: pointer;
	  border-radius: 6px;
	  color: #000;
	  width: 100px;
	  font-size: 32px;
	  line-height: 100px;
	  text-align: center;
	  height: 100px;
	}
	
	.add-update-preview /deep/ .el-upload .el-icon-plus {
	  border: 1px dashed #000;
	  cursor: pointer;
	  border-radius: 6px;
	  color: #000;
	  width: 100px;
	  font-size: 32px;
	  line-height: 100px;
	  text-align: center;
	  height: 100px;
	}
	
	.add-update-preview .el-textarea /deep/ .el-textarea__inner {
	  border: 0;
	  border-radius: 4px;
	  padding: 12px;
	  outline: none;
	  color: #000;
	  width: 100%;
	  font-size: 14px;
	  height: 120px;
	}
</style>
