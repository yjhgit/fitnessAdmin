<template>
	<div class="main-containers">
		<div class="top-container" :style='{"boxShadow":"0 1px 6px rgba(64, 158, 255, .3)","padding":"0 20px","alignItems":"center","display":"flex","justifyContent":"space-between","overflow":"hidden","top":"0","left":"0","background":"#768169","width":"100%","position":"fixed","height":"64px","zIndex":"1002"}'>
			<img v-if='false' :style='{"width":"44px","objectFit":"cover","borderRadius":"100%","display":"block","height":"44px"}' src='http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg'>
			<div v-if="true" :style='{"color":"#fff","fontSize":"24px"}'>“力炫”健身馆网站的设计与实现 </div>
			<div>
				<div v-if="false" :style='{"color":"#666","fontSize":"14px","display":"inline-block"}'>0753-1234567</div>
				<div v-if="Token" :style='{"color":"#666","fontSize":"14px","display":"inline-block"}'>{{username}}</div>
				<el-button v-if="!Token" @click="toLogin()" :style='{"padding":"0 12px","margin":"0 0 0 10px","color":"#f4f4f5","borderRadius":"2px","background":"#666","display":"inline-block","fontSize":"14px","lineHeight":"32px","height":"32px"}'>登录/注册</el-button>
                <el-button v-if="Token" @click="logout" :style='{"padding":"0 12px","margin":"0 0 0 10px","color":"#666","borderRadius":"2px","background":"#f4f4f5","display":"inline-block","fontSize":"14px","lineHeight":"32px","height":"32px"}'>退出</el-button>
			</div>
		</div>


		<div class="body-containers" :style='"horizontal" == "vertical" ? {"minHeight":"100vh","padding":"64px 0 0","margin":"0 0 0 210px","position":"relative","background":"#fff","display":"block"} : {"minHeight":"100vh","padding":"64px 0 0","margin":"0","position":"relative","background":"#fff"}'>
			<div class="menu-preview" :style='{"padding":"0 20px","borderColor":"#efefef","margin":"15px 0","background":"#E3E3E3","borderWidth":"0 0 1px 0","width":"100%","borderStyle":"solid","height":"auto"}'>
				<el-menu class="el-menu-horizontal-demo" :style='{"border":0,"padding":"0","listStyle":"none","margin":"0","background":"#E3E3E3","display":"flex","width":"100%","position":"relative","justifyContent":"center"}' :default-active="activeIndex" :unique-opened="true" mode="horizontal" :router="true" @select="handleSelect">
					<el-image v-if="false" :style='{"width":"44px","margin":"8px 10px 8px 0","objectFit":"cover","borderRadius":"100%","float":"left","height":"44px"}' src="http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg" fit="cover"></el-image>
					<el-menu-item v-for="(menu, index) in menuList" :index="index + ''" :key="index" :route="menu.url">
						<i v-if="true" :style='{"padding":"0 10px","margin":"0","color":"inherit","width":"14px","lineHeight":"60px","fontSize":"14px","height":"60px"}' :class="iconArr[index]"></i>
						<span :style='{"padding":"0 10px","lineHeight":"60px","fontSize":"14px","color":"inherit","height":"60px"}'>{{menu.name}}</span>
					</el-menu-item>
					<el-menu-item :index="menuList.length + 1 + ''" @click="goMenu('/index/cart')">
						<i v-if="true" :style='{"padding":"0 10px","margin":"0","color":"inherit","width":"14px","lineHeight":"60px","fontSize":"14px","height":"60px"}' class="el-icon-shopping-cart-2"></i>
						<span :style='{"padding":"0 10px","lineHeight":"60px","fontSize":"14px","color":"inherit","height":"60px"}'>购物车</span>
					</el-menu-item>
					<el-menu-item :index="menuList.length + 2 + ''" v-if="Token && notAdmin" @click="goMenu('/index/center')">
						<i v-if="true" :style='{"padding":"0 10px","margin":"0","color":"inherit","width":"14px","lineHeight":"60px","fontSize":"14px","height":"60px"}' class="el-icon-user"></i>
						<span :style='{"padding":"0 10px","lineHeight":"60px","fontSize":"14px","color":"inherit","height":"60px"}'>个人中心</span>
					</el-menu-item>
				</el-menu>
			</div>

			<div class="banner-preview" :style='{"width":"100%","backgroundSize":"100% 100%","backgroundImage":"url(http://codegen.caihongy.cn/20221015/3b312c6e59fd49dbaa00d7da2a44e9b7.png)","height":"450px"}'>
				<el-carousel :style='{"width":"60%","margin":"0 1% 0 38%","borderRadius":"20px","height":"450px"}' trigger="click" indicator-position="inside" arrow="always" type="default" direction="horizontal" height="400px" :autoplay="false" :interval="3000" :loop="true">
					<el-carousel-item :style='{"borderRadius":"10px","width":"100%","height":"450px"}' v-for="item in carouselList" :key="item.id">
						<el-image :style='{"objectFit":"cover","width":"100%","height":"100%"}' :src="baseUrl + item.value" fit="cover"></el-image>
					</el-carousel-item>
				</el-carousel>
			</div>

			<router-view></router-view>

			<div class="bottom-preview" :style='{"padding":"20px 0","alignItems":"center","background":"#f5f5f5","flexDirection":"column","display":"flex","width":"100%","justifyContent":"center"}'>
			    <img :style='{"width":"0","objectFit":"cover","borderRadius":"100%","display":"block","height":"0"}' src="http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg" >
			    <div :style='{"margin":"10px 0 0","fontSize":"14px","lineHeight":"28px","color":"#333"}'></div>
			    <div :style='{"margin":"10px 0 0","fontSize":"14px","lineHeight":"28px","color":"#333"}'></div>
			    <div :style='{"margin":"10px 0 0","fontSize":"14px","lineHeight":"28px","color":"#333"}'></div>
			</div>
		</div>

	</div>
</template>

<script>
import Vue from 'vue'
export default {
    data() {
		return {
            activeIndex: '0',
			roleMenus: [{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-explore","buttons":["新增","查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"appFrontIcon":"cuIcon-brand","buttons":["新增","查看","修改","删除","查看评论"],"menu":"健身教练","menuJump":"列表","tableName":"jianshenjiaolian"}],"menu":"健身教练管理"},{"child":[{"appFrontIcon":"cuIcon-present","buttons":["查看","修改","删除"],"menu":"在线留言","menuJump":"列表","tableName":"zaixianliuyan"}],"menu":"在线留言管理"},{"child":[{"appFrontIcon":"cuIcon-qrcode","buttons":["查看","修改","删除","首页总数","首页统计","教练评分统计"],"menu":"评分信息","menuJump":"列表","tableName":"pingfenxinxi"}],"menu":"评分信息管理"},{"child":[{"appFrontIcon":"cuIcon-keyboard","buttons":["新增","查看","修改","删除","查看评论"],"menu":"健身器材","menuJump":"列表","tableName":"jianshenqicai"}],"menu":"健身器材管理"},{"child":[{"appFrontIcon":"cuIcon-album","buttons":["新增","查看","修改","删除"],"menu":"器材租借","menuJump":"列表","tableName":"qicaizujie"}],"menu":"器材租借管理"},{"child":[{"appFrontIcon":"cuIcon-clothes","buttons":["查看","修改","删除","查看评论","新增"],"menu":"健身课程","menuJump":"列表","tableName":"jianshenkecheng"}],"menu":"健身课程管理"},{"child":[{"appFrontIcon":"cuIcon-medal","buttons":["查看","修改","删除","首页总数","首页统计","课程人数统计","每日选课人数统计"],"menu":"选课信息","menuJump":"列表","tableName":"xuankexinxi"}],"menu":"选课信息管理"},{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看","修改","删除"],"menu":"打卡信息","menuJump":"列表","tableName":"dakaxinxi"}],"menu":"打卡信息管理"},{"child":[{"appFrontIcon":"cuIcon-phone","buttons":["查看","修改","删除","首页总数","首页统计","预约人数统计"],"menu":"教练预约","menuJump":"列表","tableName":"jiaolianyuyue"}],"menu":"教练预约管理"},{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看","修改","删除"],"menu":"预约取消","menuJump":"列表","tableName":"yuyuequxiao"}],"menu":"预约取消管理"},{"child":[{"appFrontIcon":"cuIcon-vip","buttons":["查看","修改","删除","审核"],"menu":"调课申请","menuJump":"列表","tableName":"diaokeshenqing"}],"menu":"调课申请管理"},{"child":[{"appFrontIcon":"cuIcon-rank","buttons":["新增","查看","修改","删除"],"menu":"商品类型","menuJump":"列表","tableName":"shangpinleixing"}],"menu":"商品类型管理"},{"child":[{"appFrontIcon":"cuIcon-similar","buttons":["新增","查看","修改","删除","查看评论"],"menu":"健身商品","menuJump":"列表","tableName":"jianshenshangpin"}],"menu":"健身商品管理"},{"child":[{"appFrontIcon":"cuIcon-skin","buttons":["查看","回复","删除"],"menu":"留言板管理","tableName":"messages"}],"menu":"留言板管理"},{"child":[{"appFrontIcon":"cuIcon-skin","buttons":["查看","修改"],"menu":"轮播图管理","tableName":"config"},{"appFrontIcon":"cuIcon-news","buttons":["新增","查看","修改","删除"],"menu":"健身资讯","tableName":"news"}],"menu":"系统管理"},{"child":[{"appFrontIcon":"cuIcon-list","buttons":["查看","核销","删除"],"menu":"已支付订单","tableName":"orders/已支付"},{"appFrontIcon":"cuIcon-skin","buttons":["查看","删除"],"menu":"已完成订单","tableName":"orders/已完成"},{"appFrontIcon":"cuIcon-vip","buttons":["查看","删除"],"menu":"已取消订单","tableName":"orders/已取消"},{"appFrontIcon":"cuIcon-goods","buttons":["查看","删除"],"menu":"已退款订单","tableName":"orders/已退款"},{"appFrontIcon":"cuIcon-list","buttons":["查看","删除"],"menu":"未支付订单","tableName":"orders/未支付"}],"menu":"订单管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-qrcode","buttons":["查看","预约","留言","评分"],"menu":"健身教练列表","menuJump":"列表","tableName":"jianshenjiaolian"}],"menu":"健身教练模块"},{"child":[{"appFrontIcon":"cuIcon-pic","buttons":["查看"],"menu":"健身器材列表","menuJump":"列表","tableName":"jianshenqicai"}],"menu":"健身器材模块"},{"child":[{"appFrontIcon":"cuIcon-vip","buttons":["查看","选课"],"menu":"健身课程列表","menuJump":"列表","tableName":"jianshenkecheng"}],"menu":"健身课程模块"},{"child":[{"appFrontIcon":"cuIcon-paint","buttons":["查看"],"menu":"健身商品列表","menuJump":"列表","tableName":"jianshenshangpin"}],"menu":"健身商品模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-present","buttons":["查看","删除"],"menu":"在线留言","menuJump":"列表","tableName":"zaixianliuyan"}],"menu":"在线留言管理"},{"child":[{"appFrontIcon":"cuIcon-qrcode","buttons":["查看"],"menu":"评分信息","menuJump":"列表","tableName":"pingfenxinxi"}],"menu":"评分信息管理"},{"child":[{"appFrontIcon":"cuIcon-medal","buttons":["查看","删除","支付","打卡"],"menu":"选课信息","menuJump":"列表","tableName":"xuankexinxi"}],"menu":"选课信息管理"},{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看","删除"],"menu":"打卡信息","menuJump":"列表","tableName":"dakaxinxi"}],"menu":"打卡信息管理"},{"child":[{"appFrontIcon":"cuIcon-phone","buttons":["查看","取消"],"menu":"教练预约","menuJump":"列表","tableName":"jiaolianyuyue"}],"menu":"教练预约管理"},{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看"],"menu":"预约取消","menuJump":"列表","tableName":"yuyuequxiao"}],"menu":"预约取消管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-qrcode","buttons":["查看","预约","留言","评分"],"menu":"健身教练列表","menuJump":"列表","tableName":"jianshenjiaolian"}],"menu":"健身教练模块"},{"child":[{"appFrontIcon":"cuIcon-pic","buttons":["查看"],"menu":"健身器材列表","menuJump":"列表","tableName":"jianshenqicai"}],"menu":"健身器材模块"},{"child":[{"appFrontIcon":"cuIcon-vip","buttons":["查看","选课"],"menu":"健身课程列表","menuJump":"列表","tableName":"jianshenkecheng"}],"menu":"健身课程模块"},{"child":[{"appFrontIcon":"cuIcon-paint","buttons":["查看"],"menu":"健身商品列表","menuJump":"列表","tableName":"jianshenshangpin"}],"menu":"健身商品模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-present","buttons":["查看","删除","审核"],"menu":"在线留言","menuJump":"列表","tableName":"zaixianliuyan"}],"menu":"在线留言管理"},{"child":[{"appFrontIcon":"cuIcon-qrcode","buttons":["查看"],"menu":"评分信息","menuJump":"列表","tableName":"pingfenxinxi"}],"menu":"评分信息管理"},{"child":[{"appFrontIcon":"cuIcon-clothes","buttons":["查看"],"menu":"健身课程","menuJump":"列表","tableName":"jianshenkecheng"}],"menu":"健身课程管理"},{"child":[{"appFrontIcon":"cuIcon-medal","buttons":["查看","删除"],"menu":"选课信息","menuJump":"列表","tableName":"xuankexinxi"}],"menu":"选课信息管理"},{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看","删除"],"menu":"打卡信息","menuJump":"列表","tableName":"dakaxinxi"}],"menu":"打卡信息管理"},{"child":[{"appFrontIcon":"cuIcon-phone","buttons":["查看"],"menu":"教练预约","menuJump":"列表","tableName":"jiaolianyuyue"}],"menu":"教练预约管理"},{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看"],"menu":"预约取消","menuJump":"列表","tableName":"yuyuequxiao"}],"menu":"预约取消管理"},{"child":[{"appFrontIcon":"cuIcon-vip","buttons":["新增","查看","修改","删除"],"menu":"调课申请","menuJump":"列表","tableName":"diaokeshenqing"}],"menu":"调课申请管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-qrcode","buttons":["查看","预约","留言","评分"],"menu":"健身教练列表","menuJump":"列表","tableName":"jianshenjiaolian"}],"menu":"健身教练模块"},{"child":[{"appFrontIcon":"cuIcon-pic","buttons":["查看"],"menu":"健身器材列表","menuJump":"列表","tableName":"jianshenqicai"}],"menu":"健身器材模块"},{"child":[{"appFrontIcon":"cuIcon-vip","buttons":["查看","选课"],"menu":"健身课程列表","menuJump":"列表","tableName":"jianshenkecheng"}],"menu":"健身课程模块"},{"child":[{"appFrontIcon":"cuIcon-paint","buttons":["查看"],"menu":"健身商品列表","menuJump":"列表","tableName":"jianshenshangpin"}],"menu":"健身商品模块"}],"hasBackLogin":"是","hasBackRegister":"是","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"健身教练","tableName":"jianshenjiaolian"}],
			baseUrl: '',
			carouselList: [],
			menuList: [],
			form: {
				ask: '',
				userid: localStorage.getItem('userid')
			},
			Token: localStorage.getItem('Token'),
            username: localStorage.getItem('username'),
            notAdmin: localStorage.getItem('sessionTable')!='"users"',
			timer: '',
			iconArr: [
				'el-icon-star-off',
				'el-icon-goods',
				'el-icon-warning',
				'el-icon-question',
				'el-icon-info',
				'el-icon-help',
				'el-icon-picture-outline-round',
				'el-icon-camera-solid',
				'el-icon-video-camera-solid',
				'el-icon-video-camera',
				'el-icon-bell',
				'el-icon-s-cooperation',
				'el-icon-s-order',
				'el-icon-s-platform',
				'el-icon-s-operation',
				'el-icon-s-promotion',
				'el-icon-s-release',
				'el-icon-s-ticket',
				'el-icon-s-management',
				'el-icon-s-open',
				'el-icon-s-shop',
				'el-icon-s-marketing',
				'el-icon-s-flag',
				'el-icon-s-comment',
				'el-icon-s-finance',
				'el-icon-s-claim',
				'el-icon-s-opportunity',
				'el-icon-s-data',
				'el-icon-s-check'
			],
		}
    },
    created() {
		this.baseUrl = this.$config.baseUrl;
		this.menuList = this.$config.indexNav;
		this.getCarousel();
    },
    mounted() {
        this.activeIndex = localStorage.getItem('keyPath') || '0';
    },
    watch: {
        $route(newValue) {
            let that = this
            let url = window.location.href
            let arr = url.split('#')
            for (let x in this.menuList) {
                if (newValue.path == this.menuList[x].url) {
                    this.activeIndex = x
                }
            }
            this.Token = localStorage.getItem('Token')
        },
    },
    methods: {
        handleSelect(keyPath) {
            if (keyPath) {
                localStorage.setItem('keyPath', keyPath)
            }
        },
		toLogin() {
		  this.$router.push('/login');
		},
        logout() {
            localStorage.clear();
            Vue.http.headers.common['Token'] = "";
            this.$router.push('/index/home');
            this.activeIndex = '0'
            localStorage.setItem('keyPath', this.activeIndex)
            this.Token = ''
            this.$forceUpdate()
            this.$message({
                message: '登出成功',
                type: 'success',
                duration: 1000,
            });
        },
		getCarousel() {
			this.$http.get('config/list', {params: { page: 1, limit: 3 }}).then(res => {
				if (res.data.code == 0) {
					this.carouselList = res.data.data.list;
				}
			});
		},
		goBackend() {
			window.open(`${this.$config.baseUrl}admin/dist/index.html`, "_blank");
		},
		goMenu(path) {
            if (!localStorage.getItem('Token')) {
                this.toLogin();
            } else {
                this.$router.push(path);
            }
		},
    }
}
</script>

<style rel="stylesheet/scss" lang="scss" scoped>
	.menu-preview {
	  .el-scrollbar {
	    height: 100%;

	    & /deep/ .scrollbar-wrapper {
	      overflow-x: hidden;
	    }
	  }
	}


	.menu-preview .el-menu-horizontal-demo .el-menu-item {
		cursor: pointer;
		padding: 0 10px;
		margin: 0 5px;
		color: #888;
		white-space: nowrap;
		display: flex;
		font-size: 14px;
		border-color: #C0C0C0;
		line-height: 60px;
		border-width: 0 0 5px;
		align-items: center;
		position: relative;
		border-style: solid;
		list-style: none;
		height: 60px;
	}

	.menu-preview .el-menu-horizontal-demo .el-menu-item:hover {
		cursor: pointer;
		padding: 0 10px;
		color: #000;
		white-space: nowrap;
		font-size: 14px;
		border-color: #B3B3B3;
		line-height: 60px;
		background: #E3E3E3;
		border-width: 0 0 5px;
		position: relative;
		border-style: solid;
		list-style: none;
		height: 60px;
	}

	.menu-preview .el-menu-horizontal-demo .el-menu-item.is-active {
		cursor: pointer;
		padding: 0 10px;
		color: #768169;
		white-space: nowrap;
		font-size: 14px;
		border-color: #768169;
		line-height: 60px;
		background: #E3E3E3;
		border-width: 0 0 5px;
		position: relative;
		border-style: solid;
		list-style: none;
		height: 60px;
	}

	.banner-preview {
	  .el-carousel /deep/ .el-carousel__indicator button {
	    width: 0;
	    height: 0;
	    display: none;
	  }
	}

	.banner-preview .el-carousel /deep/ .el-carousel__container .el-carousel__arrow--left {
		width: 36px;
		font-size: 12px;
		height: 36px;
	}

	.banner-preview .el-carousel /deep/ .el-carousel__container .el-carousel__arrow--left:hover {
		background: red;
	}

	.banner-preview .el-carousel /deep/ .el-carousel__container .el-carousel__arrow--right {
		width: 36px;
		font-size: 12px;
		height: 36px;
	}

	.banner-preview .el-carousel /deep/ .el-carousel__container .el-carousel__arrow--right:hover {
		background: red;
	}

	.banner-preview .el-carousel /deep/ .el-carousel__indicators {
		padding: 0;
		margin: 0;
		z-index: 2;
		bottom: 10px;
		position: absolute;
		list-style: none;
	}

	.banner-preview .el-carousel /deep/ .el-carousel__indicators li {
		border-radius: 10px;
		padding: 0;
		margin: 0 4px;
		background: #fff;
		display: inline-block;
		width: 12px;
		opacity: 0.4;
		transition: 0.3s;
		height: 12px;
	}

	.banner-preview .el-carousel /deep/ .el-carousel__indicators li:hover {
		padding: 0;
		margin: 0 4px;
		background: #fff;
		display: inline-block;
		width: 24px;
		opacity: 0.7;
		height: 12px;
	}

	.banner-preview .el-carousel /deep/ .el-carousel__indicators li.is-active {
		padding: 0;
		margin: 0 4px;
		background: #fff;
		display: inline-block;
		width: 24px;
		opacity: 1;
		height: 12px;
	}

    .chat-content {
      .left-content {
          width: 100%;
          text-align: left;
      }
      .right-content {
          width: 100%;
          text-align: right;
      }
    }
</style>
