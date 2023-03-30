<template>
<div>
	<div class="container" :style='{"minHeight":"100vh","alignItems":"center","background":"url(http://codegen.caihongy.cn/20221015/8a06da3477dd42d1b5e8ee71023672a7.png)","display":"flex","width":"100%","backgroundSize":"100% 100%","backgroundPosition":"center center","backgroundRepeat":"no-repeat","justifyContent":"center"}'>
		<el-form ref="loginForm" :model="loginForm" :style='{"padding":"40px 20px 20px","boxShadow":"0px 4px 10px 0px rgba(0,0,0,0.302)","margin":"0","borderColor":"#BECCBA","borderRadius":"50px","background":"#fff","borderWidth":"0 10px","width":"600px","borderStyle":"solid","height":"auto"}' :rules="rules">
			<div v-if="false" :style='{"margin":"0 0 10px 0","color":"rgba(64, 158, 255, 1)","textAlign":"center","width":"100%","lineHeight":"44px","fontSize":"20px","textShadow":"4px 4px 2px rgba(64, 158, 255, .5)"}'>USER / LOGIN</div>
			<div v-if="true" :style='{"margin":"20px auto","color":"#fff","textAlign":"center","background":"#BECCBA","width":"70%","lineHeight":"44px","fontSize":"20px","height":"auto"}'>“1力炫”健身馆网站的设计与实现 登录</div>
			<el-form-item v-if="loginType==1" class="list-item" :style='{"width":"50%","margin":"0 auto 10px"}' prop="username">
				<div v-if="false" :style='{"width":"64px","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}'>账号：</div>
				<input :style='{"border":"0px solid rgba(64, 158, 255, 1)","padding":"0 10px","color":"#000","outlineOffset":"4px","background":"#F9F9F9","width":"100%","fontSize":"14px","height":"44px"}' v-model="loginForm.username" placeholder="请输入账户">
			</el-form-item>
			<el-form-item v-if="loginType==1" class="list-item" :style='{"width":"50%","margin":"0 auto 10px"}' prop="password">
				<div v-if="false" :style='{"width":"64px","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}'>密码：</div>
				<input :style='{"border":"0px solid rgba(64, 158, 255, 1)","padding":"0 10px","color":"#000","outlineOffset":"4px","background":"#F9F9F9","width":"100%","fontSize":"14px","height":"44px"}' v-model="loginForm.password" placeholder="请输入密码" type="password">
			</el-form-item>
			<el-form-item v-if="roles.length>1" class="list-type" :style='{"width":"80%","textAlign":"center","margin":"20px auto"}' prop="role">
				<el-radio v-model="loginForm.tableName" :label="item.tableName" v-for="(item, index) in roles" :key="index" @change.native="getCurrentRow(item)">{{item.roleName}}</el-radio>
			</el-form-item>
			<el-form-item :style='{"width":"100%","margin":"20px auto"}'>
				<el-button v-if="loginType==1" :style='{"border":"0","cursor":"pointer","padding":"0 24px","margin":"0 20%","outline":"none","color":"#fff","borderRadius":"4px","background":"#BECCBA","width":"60%","fontSize":"18px","height":"50px"}' @click="submitForm('loginForm')">登录</el-button>
				<el-button v-if="loginType==1" :style='{"border":"0","cursor":"pointer","padding":"0 24px","margin":"0 5px","outline":"none","color":"#fff","borderRadius":"4px","background":"rgba(64, 158, 255, 1)","display":"none","width":"auto","fontSize":"14px","height":"44px"}' @click="resetForm('loginForm')">重置</el-button>
                <el-upload v-if="loginType==2" :action="baseUrl + 'file/upload'" :show-file-list="false" :on-success="faceLogin">
                    <el-button :style='{"border":"0","cursor":"pointer","padding":"0 24px","margin":"0 20%","outline":"none","color":"#fff","borderRadius":"4px","background":"#BECCBA","width":"60%","fontSize":"18px","height":"50px"}'>人脸识别登录</el-button>
                </el-upload>
			</el-form-item>
			<div :style='{"width":"50%","margin":"20px auto","flexWrap":"wrap","display":"flex"}'>
			<router-link :style='{"cursor":"pointer","padding":"2px","margin":"6px 1%","color":"#000","textAlign":"center","background":"#EFECEC","width":"48%","fontSize":"14px","textDecoration":"none"}' :to="{path: '/register', query: {role: item.tableName,pageFlag:'register'}}" v-if="item.hasFrontRegister=='是'" v-for="(item, index) in roles" :key="index">注册{{item.roleName.replace('注册','')}}</router-link>
			</div>
		</el-form>
    </div>
</div>
</template>

<script>

export default {
	//数据集合
	data() {
		return {
            baseUrl: this.$config.baseUrl,
            loginType: 1,
			roleMenus: [{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-explore","buttons":["新增","查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"appFrontIcon":"cuIcon-brand","buttons":["新增","查看","修改","删除","查看评论"],"menu":"健身教练","menuJump":"列表","tableName":"jianshenjiaolian"}],"menu":"健身教练管理"},{"child":[{"appFrontIcon":"cuIcon-present","buttons":["查看","修改","删除"],"menu":"在线留言","menuJump":"列表","tableName":"zaixianliuyan"}],"menu":"在线留言管理"},{"child":[{"appFrontIcon":"cuIcon-qrcode","buttons":["查看","修改","删除","首页总数","首页统计","教练评分统计"],"menu":"评分信息","menuJump":"列表","tableName":"pingfenxinxi"}],"menu":"评分信息管理"},{"child":[{"appFrontIcon":"cuIcon-keyboard","buttons":["新增","查看","修改","删除","查看评论"],"menu":"健身器材","menuJump":"列表","tableName":"jianshenqicai"}],"menu":"健身器材管理"},{"child":[{"appFrontIcon":"cuIcon-album","buttons":["新增","查看","修改","删除"],"menu":"器材租借","menuJump":"列表","tableName":"qicaizujie"}],"menu":"器材租借管理"},{"child":[{"appFrontIcon":"cuIcon-clothes","buttons":["查看","修改","删除","查看评论","新增"],"menu":"健身课程","menuJump":"列表","tableName":"jianshenkecheng"}],"menu":"健身课程管理"},{"child":[{"appFrontIcon":"cuIcon-medal","buttons":["查看","修改","删除","首页总数","首页统计","课程人数统计","每日选课人数统计"],"menu":"选课信息","menuJump":"列表","tableName":"xuankexinxi"}],"menu":"选课信息管理"},{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看","修改","删除"],"menu":"打卡信息","menuJump":"列表","tableName":"dakaxinxi"}],"menu":"打卡信息管理"},{"child":[{"appFrontIcon":"cuIcon-phone","buttons":["查看","修改","删除","首页总数","首页统计","预约人数统计"],"menu":"教练预约","menuJump":"列表","tableName":"jiaolianyuyue"}],"menu":"教练预约管理"},{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看","修改","删除"],"menu":"预约取消","menuJump":"列表","tableName":"yuyuequxiao"}],"menu":"预约取消管理"},{"child":[{"appFrontIcon":"cuIcon-vip","buttons":["查看","修改","删除","审核"],"menu":"调课申请","menuJump":"列表","tableName":"diaokeshenqing"}],"menu":"调课申请管理"},{"child":[{"appFrontIcon":"cuIcon-rank","buttons":["新增","查看","修改","删除"],"menu":"商品类型","menuJump":"列表","tableName":"shangpinleixing"}],"menu":"商品类型管理"},{"child":[{"appFrontIcon":"cuIcon-similar","buttons":["新增","查看","修改","删除","查看评论"],"menu":"健身商品","menuJump":"列表","tableName":"jianshenshangpin"}],"menu":"健身商品管理"},{"child":[{"appFrontIcon":"cuIcon-skin","buttons":["查看","回复","删除"],"menu":"留言板管理","tableName":"messages"}],"menu":"留言板管理"},{"child":[{"appFrontIcon":"cuIcon-skin","buttons":["查看","修改"],"menu":"轮播图管理","tableName":"config"},{"appFrontIcon":"cuIcon-news","buttons":["新增","查看","修改","删除"],"menu":"健身资讯","tableName":"news"}],"menu":"系统管理"},{"child":[{"appFrontIcon":"cuIcon-list","buttons":["查看","核销","删除"],"menu":"已支付订单","tableName":"orders/已支付"},{"appFrontIcon":"cuIcon-skin","buttons":["查看","删除"],"menu":"已完成订单","tableName":"orders/已完成"},{"appFrontIcon":"cuIcon-vip","buttons":["查看","删除"],"menu":"已取消订单","tableName":"orders/已取消"},{"appFrontIcon":"cuIcon-goods","buttons":["查看","删除"],"menu":"已退款订单","tableName":"orders/已退款"},{"appFrontIcon":"cuIcon-list","buttons":["查看","删除"],"menu":"未支付订单","tableName":"orders/未支付"}],"menu":"订单管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-qrcode","buttons":["查看","预约","留言","评分"],"menu":"健身教练列表","menuJump":"列表","tableName":"jianshenjiaolian"}],"menu":"健身教练模块"},{"child":[{"appFrontIcon":"cuIcon-pic","buttons":["查看"],"menu":"健身器材列表","menuJump":"列表","tableName":"jianshenqicai"}],"menu":"健身器材模块"},{"child":[{"appFrontIcon":"cuIcon-vip","buttons":["查看","选课"],"menu":"健身课程列表","menuJump":"列表","tableName":"jianshenkecheng"}],"menu":"健身课程模块"},{"child":[{"appFrontIcon":"cuIcon-paint","buttons":["查看"],"menu":"健身商品列表","menuJump":"列表","tableName":"jianshenshangpin"}],"menu":"健身商品模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-present","buttons":["查看","删除"],"menu":"在线留言","menuJump":"列表","tableName":"zaixianliuyan"}],"menu":"在线留言管理"},{"child":[{"appFrontIcon":"cuIcon-qrcode","buttons":["查看"],"menu":"评分信息","menuJump":"列表","tableName":"pingfenxinxi"}],"menu":"评分信息管理"},{"child":[{"appFrontIcon":"cuIcon-medal","buttons":["查看","删除","支付","打卡"],"menu":"选课信息","menuJump":"列表","tableName":"xuankexinxi"}],"menu":"选课信息管理"},{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看","删除"],"menu":"打卡信息","menuJump":"列表","tableName":"dakaxinxi"}],"menu":"打卡信息管理"},{"child":[{"appFrontIcon":"cuIcon-phone","buttons":["查看","取消"],"menu":"教练预约","menuJump":"列表","tableName":"jiaolianyuyue"}],"menu":"教练预约管理"},{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看"],"menu":"预约取消","menuJump":"列表","tableName":"yuyuequxiao"}],"menu":"预约取消管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-qrcode","buttons":["查看","预约","留言","评分"],"menu":"健身教练列表","menuJump":"列表","tableName":"jianshenjiaolian"}],"menu":"健身教练模块"},{"child":[{"appFrontIcon":"cuIcon-pic","buttons":["查看"],"menu":"健身器材列表","menuJump":"列表","tableName":"jianshenqicai"}],"menu":"健身器材模块"},{"child":[{"appFrontIcon":"cuIcon-vip","buttons":["查看","选课"],"menu":"健身课程列表","menuJump":"列表","tableName":"jianshenkecheng"}],"menu":"健身课程模块"},{"child":[{"appFrontIcon":"cuIcon-paint","buttons":["查看"],"menu":"健身商品列表","menuJump":"列表","tableName":"jianshenshangpin"}],"menu":"健身商品模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-present","buttons":["查看","删除","审核"],"menu":"在线留言","menuJump":"列表","tableName":"zaixianliuyan"}],"menu":"在线留言管理"},{"child":[{"appFrontIcon":"cuIcon-qrcode","buttons":["查看"],"menu":"评分信息","menuJump":"列表","tableName":"pingfenxinxi"}],"menu":"评分信息管理"},{"child":[{"appFrontIcon":"cuIcon-clothes","buttons":["查看"],"menu":"健身课程","menuJump":"列表","tableName":"jianshenkecheng"}],"menu":"健身课程管理"},{"child":[{"appFrontIcon":"cuIcon-medal","buttons":["查看","删除"],"menu":"选课信息","menuJump":"列表","tableName":"xuankexinxi"}],"menu":"选课信息管理"},{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看","删除"],"menu":"打卡信息","menuJump":"列表","tableName":"dakaxinxi"}],"menu":"打卡信息管理"},{"child":[{"appFrontIcon":"cuIcon-phone","buttons":["查看"],"menu":"教练预约","menuJump":"列表","tableName":"jiaolianyuyue"}],"menu":"教练预约管理"},{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看"],"menu":"预约取消","menuJump":"列表","tableName":"yuyuequxiao"}],"menu":"预约取消管理"},{"child":[{"appFrontIcon":"cuIcon-vip","buttons":["新增","查看","修改","删除"],"menu":"调课申请","menuJump":"列表","tableName":"diaokeshenqing"}],"menu":"调课申请管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-qrcode","buttons":["查看","预约","留言","评分"],"menu":"健身教练列表","menuJump":"列表","tableName":"jianshenjiaolian"}],"menu":"健身教练模块"},{"child":[{"appFrontIcon":"cuIcon-pic","buttons":["查看"],"menu":"健身器材列表","menuJump":"列表","tableName":"jianshenqicai"}],"menu":"健身器材模块"},{"child":[{"appFrontIcon":"cuIcon-vip","buttons":["查看","选课"],"menu":"健身课程列表","menuJump":"列表","tableName":"jianshenkecheng"}],"menu":"健身课程模块"},{"child":[{"appFrontIcon":"cuIcon-paint","buttons":["查看"],"menu":"健身商品列表","menuJump":"列表","tableName":"jianshenshangpin"}],"menu":"健身商品模块"}],"hasBackLogin":"是","hasBackRegister":"是","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"健身教练","tableName":"jianshenjiaolian"}],
			loginForm: {
				username: '',
				password: '',
				tableName: '',
				code: '',
			},
			role: '',
            roles: [],
			rules: {
				username: [
					{ required: true, message: '请输入账户', trigger: 'blur' }
				],
				password: [
					{ required: true, message: '请输入密码', trigger: 'blur' }
				]
			},
			codes: [{
				num: 1,
				color: '#000',
				rotate: '10deg',
				size: '16px'
			}, {
				num: 2,
				color: '#000',
				rotate: '10deg',
				size: '16px'
			}, {
				num: 3,
				color: '#000',
				rotate: '10deg',
				size: '16px'
			}, {
				num: 4,
				color: '#000',
				rotate: '10deg',
				size: '16px'
			}]
		}
	},
	created() {
        for(let item in this.roleMenus) {
            if(this.roleMenus[item].hasFrontLogin=='是') {
                this.roles.push(this.roleMenus[item]);
            }
        }
	},
	mounted() {
	},
    //方法集合
    methods: {
		randomString() {
			var len = 4;
			var chars = [
			  'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k',
			  'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
			  'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G',
			  'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R',
			  'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '0', '1', '2',
			  '3', '4', '5', '6', '7', '8', '9'
			]
			var colors = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f']
			var sizes = ['14', '15', '16', '17', '18']

			var output = []
			for (var i = 0; i < len; i++) {
			  // 随机验证码
			  var key = Math.floor(Math.random() * chars.length)
			  this.codes[i].num = chars[key]
			  // 随机验证码颜色
			  var code = '#'
			  for (var j = 0; j < 6; j++) {
			    var key = Math.floor(Math.random() * colors.length)
			    code += colors[key]
			  }
			  this.codes[i].color = code
			  // 随机验证码方向
			  var rotate = Math.floor(Math.random() * 45)
			  var plus = Math.floor(Math.random() * 2)
			  if (plus == 1) rotate = '-' + rotate
			  this.codes[i].rotate = 'rotate(' + rotate + 'deg)'
			  // 随机验证码字体大小
			  var size = Math.floor(Math.random() * sizes.length)
			  this.codes[i].size = sizes[size] + 'px'
			}
		},
      getCurrentRow(row) {
        this.role = row.roleName;
      },
      submitForm(formName) {
        if (this.roles.length!=1) {
            if (!this.role) {
                this.$message.error("请选择登录用户类型");
                return false;
            }
        } else {
            this.role = this.roles[0].roleName;
            this.loginForm.tableName = this.roles[0].tableName;
        }
        this.$refs[formName].validate((valid) => {
          if (valid) {
            this.$http.get(`${this.loginForm.tableName}/login`, {params: this.loginForm}).then(res => {
              if (res.data.code === 0) {
                localStorage.setItem('Token', res.data.token);
                localStorage.setItem('UserTableName', this.loginForm.tableName);
                localStorage.setItem('username', this.loginForm.username);
                localStorage.setItem('adminName', this.loginForm.username);
                localStorage.setItem('sessionTable', this.loginForm.tableName);
                localStorage.setItem('role', this.role);
                localStorage.setItem('keyPath', this.$config.indexNav.length+2);
                this.$router.push('/index/center');
                this.$message({
                  message: '登录成功',
                  type: 'success',
                  duration: 1500,
                });
              } else {
                this.$message.error(res.data.msg);
              }
            });
          } else {
            return false;
          }
        });
      },
      resetForm(formName) {
        this.$refs[formName].resetFields();
      }
    }
  }
</script>

<style rel="stylesheet/scss" lang="scss" scoped>
	.container {
		position: relative;
		background: url(http://codegen.caihongy.cn/20221015/8a06da3477dd42d1b5e8ee71023672a7.png);

		.el-form-item {
		  & /deep/ .el-form-item__content {
		    width: 100%;
		  }
		}

		.list-item /deep/ .el-input .el-input__inner {
			border: 0px solid rgba(64, 158, 255, 1);
			padding: 0 10px;
			color: #000;
			background: #F9F9F9;
			width: 100%;
			font-size: 14px;
			outline-offset: 4px;
			height: 44px;
		}

		.list-code /deep/ .el-input .el-input__inner {
			border: 0px solid rgba(64, 158, 255, 1);
			padding: 0 10px;
			outline: none;
			color: #000;
			background: #F9F9F9;
			display: inline-block;
			vertical-align: middle;
			width: calc(100% - 80px);
			font-size: 14px;
			height: 44px;
		}

		.list-type /deep/ .el-radio__input .el-radio__inner {
			background: rgba(53, 53, 53, 0);
			border-color: #768169;
		}
		.list-type /deep/ .el-radio__input.is-checked .el-radio__inner {
			background: #768169;
			border-color: #768169;
		}
		.list-type /deep/ .el-radio__label {
			color: #768169;
			font-size: 14px;
		}
		.list-type /deep/ .el-radio__input.is-checked+.el-radio__label {
			color: #768169;
			font-size: 14px;
		}
	}
</style>
