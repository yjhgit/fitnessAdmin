<template>
<div :style='{"width":"1000px","padding":"20px","margin":"10px auto","position":"relative","background":"#D8D8D8"}'>
    <el-form
      class="add-update-preview"
      ref="ruleForm"
      :model="ruleForm"
      :rules="rules"
      label-width="110px"
    >
          <el-form-item :style='{"width":"100%","padding":"10px","margin":"0 2% 10px","display":"inline-block"}' label="工号" prop="gonghao">
            <el-input v-model="ruleForm.gonghao" :disabled="true"
                placeholder="工号" clearable ></el-input>
          </el-form-item>
          <el-form-item :style='{"width":"100%","padding":"10px","margin":"0 2% 10px","display":"inline-block"}' label="教练姓名" prop="jiaolianxingming">
            <el-input v-model="ruleForm.jiaolianxingming" :disabled="true"
                placeholder="教练姓名" clearable ></el-input>
          </el-form-item>
          <el-form-item :style='{"width":"100%","padding":"10px","margin":"0 2% 10px","display":"inline-block"}' label="预约时间" prop="yuyueshijian" >
              <el-date-picker
                  @change="selectTime"
                  value-format="yyyy-MM-dd"
                  v-model="ruleForm.yuyueshijian"
                  type="date"
                  :picker-options="pickerOptions"
                  placeholder="预约时间">
              </el-date-picker>
          </el-form-item>
          <el-form-item v-show="ruleForm.yuyueshijian" :style='{"width":"100%","padding":"10px","margin":"0 2% 10px","display":"inline-block"}' prop="timeFrame">
            <el-radio v-model="ruleForm.timeFrame" label="9:00">上午 9:00</el-radio>
            <el-radio v-model="ruleForm.timeFrame" label="14:00">下午 14:00</el-radio>
          </el-form-item>
          <el-form-item :style='{"width":"100%","padding":"10px","margin":"0 2% 10px","display":"inline-block"}' label="用户名" prop="yonghuming">
            <el-input v-model="ruleForm.yonghuming" :disabled="true"
                placeholder="用户名" clearable ></el-input>
          </el-form-item>
          <el-form-item :style='{"width":"100%","padding":"10px","margin":"0 2% 10px","display":"inline-block"}' label="姓名" prop="xingming">
            <el-input v-model="ruleForm.xingming"
                placeholder="姓名" clearable ></el-input>
          </el-form-item>
          <el-form-item :style='{"width":"100%","padding":"10px","margin":"0 2% 10px","display":"inline-block"}' label="手机" prop="shouji">
            <el-input v-model="ruleForm.shouji"
                placeholder="手机" clearable ></el-input>
          </el-form-item>
          <el-form-item :style='{"width":"100%","padding":"10px","margin":"0 2% 10px","display":"inline-block"}' label="预约说明" prop="yuyueshuoming">
            <el-input
              type="textarea"
              :rows="8"
              placeholder="预约说明"
              v-model="ruleForm.yuyueshuoming">
            </el-input>
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
          pickerOptions: {
              disabledDate(time) {
                  return time.getTime() < Date.now();
              }
          },
        id: '',
        baseUrl: '',
        ro:{
            gonghao : false,
            jiaolianxingming : false,
            changdimingcheng : false,
            yuyueshuoming : false,
            yuyueshijian : false,
            timeFrame : false,
            yonghuming : false,
            xingming : false,
            shouji : false,
        },
        type: '',
        userTableName: localStorage.getItem('UserTableName'),
        ruleForm: {
          gonghao: '',
          jiaolianxingming: '',
          changdimingcheng: '',
          yuyueshuoming: '',
          yuyueshijian: '',
          timeFrame: '',
          userid: localStorage.getItem('userid'),
          yonghuming: '',
          xingming: '',
          shouji: '',
        },
        rules: {
          gonghao: [
          ],
          jiaolianxingming: [
          ],
          changdimingcheng: [
            { required: true, message: '场地名称不能为空', trigger: 'blur' },
          ],
          yuyueshuoming: [
            { required: true, message: '预约说明不能为空', trigger: 'blur' },
          ],
          yuyueshijian: [
            { required: true, message: '预约时间不能为空', trigger: 'blur' },
          ],
          timeFrame: [
            { required: true, message: '预约时段不能为空', trigger: 'blur' },
          ],
          yonghuming: [
          ],
          xingming: [
          ],
          shouji: [
            { validator: this.$validate.isMobile, trigger: 'blur' },
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
    },
    methods: {
      getMakeZero(s) {
          return s < 10 ? '0' + s : s;
      },
      selectTime(val){
          this.ruleForm.timeFrame = ""
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
            if(o=='gonghao'){
              this.ruleForm.gonghao = obj[o];
              this.ro.gonghao = true;
              continue;
            }
            if(o=='jiaolianxingming'){
              this.ruleForm.jiaolianxingming = obj[o];
              this.ro.jiaolianxingming = true;
              continue;
            }
            if(o=='changdimingcheng'){
              this.ruleForm.changdimingcheng = obj[o];
              this.ro.changdimingcheng = true;
              continue;
            }
            if(o=='yuyueshuoming'){
              this.ruleForm.yuyueshuoming = obj[o];
              this.ro.yuyueshuoming = true;
              continue;
            }
            if(o=='yuyueshijian'){
              this.ruleForm.yuyueshijian = obj[o];
              this.ro.yuyueshijian = true;
              continue;
            }
            if(o=='timeFrame'){
              this.ruleForm.timeFrame = obj[o];
              this.ro.timeFrame = true;
              continue;
            }
            if(o=='yonghuming'){
              this.ruleForm.yonghuming = obj[o];
              this.ro.yonghuming = true;
              continue;
            }
            if(o=='xingming'){
              this.ruleForm.xingming = obj[o];
              this.ro.xingming = true;
              continue;
            }
            if(o=='shouji'){
              this.ruleForm.shouji = obj[o];
              this.ro.shouji = true;
              continue;
            }
          }
        }
        // 获取用户信息
        this.$http.get(this.userTableName + '/session', {emulateJSON: true}).then(res => {
          if (res.data.code == 0) {
            var json = res.data.data;
            if((json.yonghuming!=''&&json.yonghuming) || json.yonghuming==0){
                this.ruleForm.yonghuming = json.yonghuming
            }
            if((json.xingming!=''&&json.xingming) || json.xingming==0){
                this.ruleForm.xingming = json.xingming
            }
            if((json.shouji!=''&&json.shouji) || json.shouji==0){
                this.ruleForm.shouji = json.shouji
            }
          }
        });
      },

    // 多级联动参数
      // 多级联动参数
      info(id) {
        this.$http.get('jiaolianyuyue/detail/${id}', {emulateJSON: true}).then(res => {
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
                 this.$http.get('jiaolianyuyue/list', {
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


                          this.$http.post('jiaolianyuyue/add', this.ruleForm).then(res => {
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


                  this.$http.post('jiaolianyuyue/add', this.ruleForm).then(res => {
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
