<template>
<div class="home-preview" :style='{"width":"100%","margin":"10px auto"}'>





<div class="news" :style='{"margin":"0 0 10px","background":"#fff"}'>
	<div v-if="false" class="idea newsIdea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
		<div class="box1" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box2" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box3" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box4" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box5" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box6" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box7" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box8" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box9" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box10" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
	</div>

	<div class="title" :style='{"width":"200px","margin":"40px auto","lineHeight":"54px","textAlign":"center"}'>
		<span :style='{"color":"#000","fontSize":"30px"}'>健身资讯</span>
	</div>








	<!-- 样式七 -->
	<div v-if="newsList.length" class="list list7 index-pv1" :style='{"width":"100%","padding":"10px","background":"#fff","justifyContent":"center","display":"flex","height":"auto"}'>
	  <div v-for="(item,index) in newsList" v-if="index<4" :key="index" @click="toDetail('newsDetail', item)" class="new7-list-item animation-box" style="cursor: pointer;" :style='{"width":"230px","padding":"10px 10px 40px 10px","margin":"0 5px","position":"relative","background":"#C7D4B9","height":"auto"}'>
	    <img :style='{"width":"100%","objectFit":"cover","borderRadius":"10px","height":"275px"}' style="box-sizing: border-box;object-fit: cover;width: 100%;height: 250px;" :src="baseUrl + item.picture">
	    <div :style='{"padding":"1px 10px","fontSize":"14px","lineHeight":"28px","overflow":"hidden","color":"#000000","height":"30px"}' class="new7-list-item-title line1">{{ item.title }}</div>
	    <div :style='{"padding":"0 10px","margin":"0 auto","overflow":"hidden","color":"#666","background":"#fff","width":"90%","fontSize":"14px","lineHeight":"24px","height":"50px"}' class="new7-list-item-descript line1">{{ item.introduction }}</div>
	    <div :style='{"padding":"0 10px","transform":"translateX(-50%)","color":"#fff","borderRadius":"10px 10px 0 0","left":"50%","bottom":"0","background":"#768169","width":"auto","fontSize":"12px","lineHeight":"24px","position":"absolute"}' class="new7-list-item-time">{{ item.addtime.split(' ')[0] }}</div>
	    <div :style='{"width":"100%","padding":"0 10px","alignItems":"center","justifyContent":"space-between","display":"flex","height":"auto"}'>
	      <div :style='{"color":"#666","fontSize":"14px","lineHeight":"24px"}'></div>
	      <div :style='{"color":"#999","fontSize":"14px","lineHeight":"24px"}'></div>
	    </div>
	  </div>
	</div>




	<div @click="moreBtn('news')" :style='{"border":"1px solid #768169","margin":"10px auto","borderRadius":"20px","textAlign":"center","background":"#fff","display":"block","width":"80px","lineHeight":"32px"}'>
		<span :style='{"color":"#768169","fontSize":"12px"}'>查看更多</span>
		<i v-if="true" :style='{"color":"#768169","fontSize":"12px"}' class="el-icon-d-arrow-right"></i>
	</div>

</div>


<div class="lists" :style='{"margin":"0 0 10px","backgroundSize":"100% 100%","position":"relative","background":"#fff","backgroundImage":"url(http://codegen.caihongy.cn/20221015/31b091a5dcd4468aa3453056f179329f.png)","height":"auto"}'>
	<div v-if="false" class="idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
		<div class="box1" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box2" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box3" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box4" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box5" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box6" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box7" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box8" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box9" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box10" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
	</div>

	<div class="title" :style='{"width":"200px","margin":"50px auto","lineHeight":"54px","textAlign":"center"}'>
	  <span :style='{"color":"#000","fontSize":"30px"}'>健身教练展示123</span>
	</div>





	<!-- 样式四 -->
	<div class="list list4 index-pv1" :style='{"width":"1000px","padding":"10px","margin":"0 auto","position":"relative","height":"800px"}'>
		<div v-if="jianshenjiaolianList.length>0" class="list-4-item animation-box" @click="toDetail('jianshenjiaolianDetail', jianshenjiaolianList[0])" :style='{"boxShadow":"0px 4px 10px 0px rgba(0,0,0,0.302)","margin":"0 10px","overflow":"hidden","borderRadius":"20px","flexWrap":"wrap","flexDirection":"column","background":"#fff","display":"flex","width":"274px","position":"relative","height":"auto"}'>
			<img :style='{"width":"100%","objectFit":"cover","borderRadius":"20px","height":"400px"}' v-if="preHttp(jianshenjiaolianList[0].touxiang)" :src="jianshenjiaolianList[0].touxiang.split(',')[0]" alt="" />
			<img :style='{"width":"100%","objectFit":"cover","borderRadius":"20px","height":"400px"}' v-else :src="baseUrl + (jianshenjiaolianList[0].touxiang?jianshenjiaolianList[0].touxiang.split(',')[0]:'')" alt="" />
			<div class="list-4-item-title line1" :style='{"width":"100%","lineHeight":"44px","fontSize":"18px","color":"#000","textAlign":"center"}'>
                <div>工号:{{jianshenjiaolianList[0].gonghao}}</div>
                <div>{{jianshenjiaolianList[0].jiaolianxingming}}</div>
                <div>等级:{{jianshenjiaolianList[0].dengji}}</div>
            </div>
		</div>
		<div :style='{"margin":"0 0 10px","top":"10px","left":"310px","flexDirection":"column","display":"flex","width":"210px","position":"absolute","height":"auto"}' class="list-4-body">
			<div v-if="jianshenjiaolianList.length>1" @click="toDetail('jianshenjiaolianDetail', jianshenjiaolianList[1])" class="list-4-item animation-box item-2" :style='{"boxShadow":"0px 4px 10px 0px rgba(0,0,0,0.302)","margin":"0 10px 20px","overflow":"hidden","borderRadius":"20px","flexWrap":"wrap","background":"#fff","display":"inline-block","width":"210px","position":"relative","height":"auto"}'>
				<img :style='{"width":"100%","objectFit":"cover","borderRadius":"20px","height":"120px"}' v-if="preHttp(jianshenjiaolianList[1].touxiang)" :src="jianshenjiaolianList[1].touxiang.split(',')[0]" alt="" />
				<img :style='{"width":"100%","objectFit":"cover","borderRadius":"20px","height":"120px"}' v-else :src="baseUrl + (jianshenjiaolianList[1].touxiang?jianshenjiaolianList[1].touxiang.split(',')[0]:'')" alt="" />
				<div class="list-4-item-title line1" :style='{"width":"100%","lineHeight":"44px","fontSize":"18px","color":"#000","textAlign":"center"}'>
                    <div>工号:{{jianshenjiaolianList[1].gonghao}}</div>
                    <div>{{jianshenjiaolianList[1].jiaolianxingming}}</div>
                    <div>等级:{{jianshenjiaolianList[1].dengji}}</div>
                </div>
			</div>
			<div v-if="jianshenjiaolianList.length>2" @click="toDetail('jianshenjiaolianDetail', jianshenjiaolianList[2])" class="list-4-item animation-box item-3" :style='{"boxShadow":"0px 4px 10px 0px rgba(0,0,0,0.302)","margin":"0 10px","overflow":"hidden","borderRadius":"20px","flexWrap":"wrap","flexDirection":"column","background":"#fff","display":"flex","width":"210px","position":"relative","height":"auto"}'>
				<img :style='{"width":"100%","objectFit":"cover","borderRadius":"20px","height":"120px"}' v-if="preHttp(jianshenjiaolianList[2].touxiang)" :src="jianshenjiaolianList[2].touxiang.split(',')[0]" alt="" />
				<img :style='{"width":"100%","objectFit":"cover","borderRadius":"20px","height":"120px"}' v-else :src="baseUrl + (jianshenjiaolianList[2].touxiang?jianshenjiaolianList[2].touxiang.split(',')[0]:'')" alt="" />
				<div class="list-4-item-title line1" :style='{"width":"100%","lineHeight":"44px","fontSize":"18px","color":"#000","textAlign":"center"}'>
                    <div>工号:{{jianshenjiaolianList[2].gonghao}}</div>
                    <div>{{jianshenjiaolianList[2].jiaolianxingming}}</div>
                    <div>等级:{{jianshenjiaolianList[2].dengji}}</div>
                </div>
			</div>
		</div>
		<div :style='{"margin":"10px 0 0","top":"0px","flexWrap":"wrap","display":"flex","width":"590px","position":"absolute","right":"-140px","height":"auto"}' class="list-4-body">
			<div v-if="jianshenjiaolianList.length>3" @click="toDetail('jianshenjiaolianDetail', jianshenjiaolianList[3])" class="list-4-item animation-box item-4" :style='{"boxShadow":"0px 4px 10px 0px rgba(0,0,0,0.302)","margin":"0 10px","overflow":"hidden","borderRadius":"20px","background":"#fff","display":"inline-block","width":"auto","position":"relative","height":"auto"}'>
				<img :style='{"width":"220px","objectFit":"cover","borderRadius":"20px","height":"305px"}' v-if="preHttp(jianshenjiaolianList[3].touxiang)" :src="jianshenjiaolianList[3].touxiang.split(',')[0]" alt="" />
				<img :style='{"width":"220px","objectFit":"cover","borderRadius":"20px","height":"305px"}' v-else :src="baseUrl + (jianshenjiaolianList[3].touxiang?jianshenjiaolianList[3].touxiang.split(',')[0]:'')" alt="" />
				<div class="list-4-item-title line1" :style='{"width":"100%","lineHeight":"44px","fontSize":"18px","color":"#000","textAlign":"center"}'>
                    <div>工号:{{jianshenjiaolianList[3].gonghao}}</div>
                    <div>{{jianshenjiaolianList[3].jiaolianxingming}}</div>
                    <div>等级:{{jianshenjiaolianList[3].dengji}}</div>
                </div>
			</div>
			<div v-if="jianshenjiaolianList.length>4" @click="toDetail('jianshenjiaolianDetail', jianshenjiaolianList[4])" class="list-4-item animation-box item-5" :style='{"boxShadow":"0px 4px 10px 0px rgba(0,0,0,0.302)","margin":"0 20px","flexDirection":"column","display":"flex","right":"90px","overflow":"hidden","top":"0","borderRadius":"20px","flexWrap":"wrap","background":"#fff","width":"220px","position":"absolute","height":"auto"}'>
				<img :style='{"width":"100%","objectFit":"cover","borderRadius":"20px","height":"305px"}' v-if="preHttp(jianshenjiaolianList[4].touxiang)" :src="jianshenjiaolianList[4].touxiang.split(',')[0]" alt="" />
				<img :style='{"width":"100%","objectFit":"cover","borderRadius":"20px","height":"305px"}' v-else :src="baseUrl + (jianshenjiaolianList[4].touxiang?jianshenjiaolianList[4].touxiang.split(',')[0]:'')" alt="" />
				<div class="list-4-item-title line1" :style='{"width":"100%","lineHeight":"44px","fontSize":"18px","color":"#000","textAlign":"center"}'>
                    <div>工号:{{jianshenjiaolianList[4].gonghao}}</div>
                    <div>{{jianshenjiaolianList[4].jiaolianxingming}}</div>
                    <div>等级:{{jianshenjiaolianList[4].dengji}}</div>
                </div>
			</div>
		</div>
	</div>






	<div @click="moreBtn('jianshenjiaolian')" :style='{"border":"0","margin":"0px auto","borderRadius":"10px","textAlign":"center","background":"#c7d4b9","bottom":"120px","display":"block","width":"150px","lineHeight":"50px","position":"absolute","right":"500px"}'>
		<span :style='{"color":"#333","fontSize":"12px"}'>查看更多</span>
		<i v-if="true" :style='{"color":"#333","fontSize":"12px"}' class="el-icon-d-arrow-right"></i>
	</div>


</div>
<div class="lists" :style='{"margin":"0 0 10px","backgroundSize":"100% 100%","position":"relative","background":"#fff","backgroundImage":"url(http://codegen.caihongy.cn/20221015/31b091a5dcd4468aa3453056f179329f.png)","height":"auto"}'>
	<div v-if="false" class="idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
		<div class="box1" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box2" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box3" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box4" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box5" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box6" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box7" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box8" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box9" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box10" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
	</div>

	<div class="title" :style='{"width":"200px","margin":"50px auto","lineHeight":"54px","textAlign":"center"}'>
	  <span :style='{"color":"#000","fontSize":"30px"}'>健身器材展示</span>
	</div>





	<!-- 样式四 -->
	<div class="list list4 index-pv1" :style='{"width":"1000px","padding":"10px","margin":"0 auto","position":"relative","height":"800px"}'>
		<div v-if="jianshenqicaiList.length>0" class="list-4-item animation-box" @click="toDetail('jianshenqicaiDetail', jianshenqicaiList[0])" :style='{"boxShadow":"0px 4px 10px 0px rgba(0,0,0,0.302)","margin":"0 10px","overflow":"hidden","borderRadius":"20px","flexWrap":"wrap","flexDirection":"column","background":"#fff","display":"flex","width":"274px","position":"relative","height":"auto"}'>
			<img :style='{"width":"100%","objectFit":"cover","borderRadius":"20px","height":"400px"}' v-if="preHttp(jianshenqicaiList[0].tupian)" :src="jianshenqicaiList[0].tupian.split(',')[0]" alt="" />
			<img :style='{"width":"100%","objectFit":"cover","borderRadius":"20px","height":"400px"}' v-else :src="baseUrl + (jianshenqicaiList[0].tupian?jianshenqicaiList[0].tupian.split(',')[0]:'')" alt="" />
			<div class="list-4-item-title line1" :style='{"width":"100%","lineHeight":"44px","fontSize":"18px","color":"#000","textAlign":"center"}'>
                <div>{{jianshenqicaiList[0].qicaimingcheng}}</div>
                <div>{{jianshenqicaiList[0].qicaileixing}}</div>
            </div>
		</div>
		<div :style='{"margin":"0 0 10px","top":"10px","left":"310px","flexDirection":"column","display":"flex","width":"210px","position":"absolute","height":"auto"}' class="list-4-body">
			<div v-if="jianshenqicaiList.length>1" @click="toDetail('jianshenqicaiDetail', jianshenqicaiList[1])" class="list-4-item animation-box item-2" :style='{"boxShadow":"0px 4px 10px 0px rgba(0,0,0,0.302)","margin":"0 10px 20px","overflow":"hidden","borderRadius":"20px","flexWrap":"wrap","background":"#fff","display":"inline-block","width":"210px","position":"relative","height":"auto"}'>
				<img :style='{"width":"100%","objectFit":"cover","borderRadius":"20px","height":"120px"}' v-if="preHttp(jianshenqicaiList[1].tupian)" :src="jianshenqicaiList[1].tupian.split(',')[0]" alt="" />
				<img :style='{"width":"100%","objectFit":"cover","borderRadius":"20px","height":"120px"}' v-else :src="baseUrl + (jianshenqicaiList[1].tupian?jianshenqicaiList[1].tupian.split(',')[0]:'')" alt="" />
				<div class="list-4-item-title line1" :style='{"width":"100%","lineHeight":"44px","fontSize":"18px","color":"#000","textAlign":"center"}'>
                    <div>{{jianshenqicaiList[1].qicaimingcheng}}</div>
                    <div>{{jianshenqicaiList[1].qicaileixing}}</div>
                </div>
			</div>
			<div v-if="jianshenqicaiList.length>2" @click="toDetail('jianshenqicaiDetail', jianshenqicaiList[2])" class="list-4-item animation-box item-3" :style='{"boxShadow":"0px 4px 10px 0px rgba(0,0,0,0.302)","margin":"0 10px","overflow":"hidden","borderRadius":"20px","flexWrap":"wrap","flexDirection":"column","background":"#fff","display":"flex","width":"210px","position":"relative","height":"auto"}'>
				<img :style='{"width":"100%","objectFit":"cover","borderRadius":"20px","height":"120px"}' v-if="preHttp(jianshenqicaiList[2].tupian)" :src="jianshenqicaiList[2].tupian.split(',')[0]" alt="" />
				<img :style='{"width":"100%","objectFit":"cover","borderRadius":"20px","height":"120px"}' v-else :src="baseUrl + (jianshenqicaiList[2].tupian?jianshenqicaiList[2].tupian.split(',')[0]:'')" alt="" />
				<div class="list-4-item-title line1" :style='{"width":"100%","lineHeight":"44px","fontSize":"18px","color":"#000","textAlign":"center"}'>
                    <div>{{jianshenqicaiList[2].qicaimingcheng}}</div>
                    <div>{{jianshenqicaiList[2].qicaileixing}}</div>
                </div>
			</div>
		</div>
		<div :style='{"margin":"10px 0 0","top":"0px","flexWrap":"wrap","display":"flex","width":"590px","position":"absolute","right":"-140px","height":"auto"}' class="list-4-body">
			<div v-if="jianshenqicaiList.length>3" @click="toDetail('jianshenqicaiDetail', jianshenqicaiList[3])" class="list-4-item animation-box item-4" :style='{"boxShadow":"0px 4px 10px 0px rgba(0,0,0,0.302)","margin":"0 10px","overflow":"hidden","borderRadius":"20px","background":"#fff","display":"inline-block","width":"auto","position":"relative","height":"auto"}'>
				<img :style='{"width":"220px","objectFit":"cover","borderRadius":"20px","height":"305px"}' v-if="preHttp(jianshenqicaiList[3].tupian)" :src="jianshenqicaiList[3].tupian.split(',')[0]" alt="" />
				<img :style='{"width":"220px","objectFit":"cover","borderRadius":"20px","height":"305px"}' v-else :src="baseUrl + (jianshenqicaiList[3].tupian?jianshenqicaiList[3].tupian.split(',')[0]:'')" alt="" />
				<div class="list-4-item-title line1" :style='{"width":"100%","lineHeight":"44px","fontSize":"18px","color":"#000","textAlign":"center"}'>
                    <div>{{jianshenqicaiList[3].qicaimingcheng}}</div>
                    <div>{{jianshenqicaiList[3].qicaileixing}}</div>
                </div>
			</div>
			<div v-if="jianshenqicaiList.length>4" @click="toDetail('jianshenqicaiDetail', jianshenqicaiList[4])" class="list-4-item animation-box item-5" :style='{"boxShadow":"0px 4px 10px 0px rgba(0,0,0,0.302)","margin":"0 20px","flexDirection":"column","display":"flex","right":"90px","overflow":"hidden","top":"0","borderRadius":"20px","flexWrap":"wrap","background":"#fff","width":"220px","position":"absolute","height":"auto"}'>
				<img :style='{"width":"100%","objectFit":"cover","borderRadius":"20px","height":"305px"}' v-if="preHttp(jianshenqicaiList[4].tupian)" :src="jianshenqicaiList[4].tupian.split(',')[0]" alt="" />
				<img :style='{"width":"100%","objectFit":"cover","borderRadius":"20px","height":"305px"}' v-else :src="baseUrl + (jianshenqicaiList[4].tupian?jianshenqicaiList[4].tupian.split(',')[0]:'')" alt="" />
				<div class="list-4-item-title line1" :style='{"width":"100%","lineHeight":"44px","fontSize":"18px","color":"#000","textAlign":"center"}'>
                    <div>{{jianshenqicaiList[4].qicaimingcheng}}</div>
                    <div>{{jianshenqicaiList[4].qicaileixing}}</div>
                </div>
			</div>
		</div>
	</div>






	<div @click="moreBtn('jianshenqicai')" :style='{"border":"0","margin":"0px auto","borderRadius":"10px","textAlign":"center","background":"#c7d4b9","bottom":"120px","display":"block","width":"150px","lineHeight":"50px","position":"absolute","right":"500px"}'>
		<span :style='{"color":"#333","fontSize":"12px"}'>查看更多</span>
		<i v-if="true" :style='{"color":"#333","fontSize":"12px"}' class="el-icon-d-arrow-right"></i>
	</div>


</div>
<div class="lists" :style='{"margin":"0 0 10px","backgroundSize":"100% 100%","position":"relative","background":"#fff","backgroundImage":"url(http://codegen.caihongy.cn/20221015/31b091a5dcd4468aa3453056f179329f.png)","height":"auto"}'>
	<div v-if="false" class="idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
		<div class="box1" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box2" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box3" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box4" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box5" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box6" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box7" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box8" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box9" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box10" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
	</div>

	<div class="title" :style='{"width":"200px","margin":"50px auto","lineHeight":"54px","textAlign":"center"}'>
	  <span :style='{"color":"#000","fontSize":"30px"}'>健身课程展示</span>
	</div>





	<!-- 样式四 -->
	<div class="list list4 index-pv1" :style='{"width":"1000px","padding":"10px","margin":"0 auto","position":"relative","height":"800px"}'>
		<div v-if="jianshenkechengList.length>0" class="list-4-item animation-box" @click="toDetail('jianshenkechengDetail', jianshenkechengList[0])" :style='{"boxShadow":"0px 4px 10px 0px rgba(0,0,0,0.302)","margin":"0 10px","overflow":"hidden","borderRadius":"20px","flexWrap":"wrap","flexDirection":"column","background":"#fff","display":"flex","width":"274px","position":"relative","height":"auto"}'>
			<img :style='{"width":"100%","objectFit":"cover","borderRadius":"20px","height":"400px"}' v-if="preHttp(jianshenkechengList[0].tupian)" :src="jianshenkechengList[0].tupian.split(',')[0]" alt="" />
			<img :style='{"width":"100%","objectFit":"cover","borderRadius":"20px","height":"400px"}' v-else :src="baseUrl + (jianshenkechengList[0].tupian?jianshenkechengList[0].tupian.split(',')[0]:'')" alt="" />
			<div class="list-4-item-title line1" :style='{"width":"100%","lineHeight":"44px","fontSize":"18px","color":"#000","textAlign":"center"}'>
                <div>{{jianshenkechengList[0].kechengmingcheng}}</div>
                <div>{{jianshenkechengList[0].shangkeshijian}}</div>
                <div>价格:{{jianshenkechengList[0].jiage}}</div>
                <div>{{jianshenkechengList[0].jiaolianxingming}}</div>
            </div>
		</div>
		<div :style='{"margin":"0 0 10px","top":"10px","left":"310px","flexDirection":"column","display":"flex","width":"210px","position":"absolute","height":"auto"}' class="list-4-body">
			<div v-if="jianshenkechengList.length>1" @click="toDetail('jianshenkechengDetail', jianshenkechengList[1])" class="list-4-item animation-box item-2" :style='{"boxShadow":"0px 4px 10px 0px rgba(0,0,0,0.302)","margin":"0 10px 20px","overflow":"hidden","borderRadius":"20px","flexWrap":"wrap","background":"#fff","display":"inline-block","width":"210px","position":"relative","height":"auto"}'>
				<img :style='{"width":"100%","objectFit":"cover","borderRadius":"20px","height":"120px"}' v-if="preHttp(jianshenkechengList[1].tupian)" :src="jianshenkechengList[1].tupian.split(',')[0]" alt="" />
				<img :style='{"width":"100%","objectFit":"cover","borderRadius":"20px","height":"120px"}' v-else :src="baseUrl + (jianshenkechengList[1].tupian?jianshenkechengList[1].tupian.split(',')[0]:'')" alt="" />
				<div class="list-4-item-title line1" :style='{"width":"100%","lineHeight":"44px","fontSize":"18px","color":"#000","textAlign":"center"}'>
                    <div>{{jianshenkechengList[1].kechengmingcheng}}</div>
                    <div>{{jianshenkechengList[1].shangkeshijian}}</div>
                    <div>价格:{{jianshenkechengList[1].jiage}}</div>
                    <div>{{jianshenkechengList[1].jiaolianxingming}}</div>
                </div>
			</div>
			<div v-if="jianshenkechengList.length>2" @click="toDetail('jianshenkechengDetail', jianshenkechengList[2])" class="list-4-item animation-box item-3" :style='{"boxShadow":"0px 4px 10px 0px rgba(0,0,0,0.302)","margin":"0 10px","overflow":"hidden","borderRadius":"20px","flexWrap":"wrap","flexDirection":"column","background":"#fff","display":"flex","width":"210px","position":"relative","height":"auto"}'>
				<img :style='{"width":"100%","objectFit":"cover","borderRadius":"20px","height":"120px"}' v-if="preHttp(jianshenkechengList[2].tupian)" :src="jianshenkechengList[2].tupian.split(',')[0]" alt="" />
				<img :style='{"width":"100%","objectFit":"cover","borderRadius":"20px","height":"120px"}' v-else :src="baseUrl + (jianshenkechengList[2].tupian?jianshenkechengList[2].tupian.split(',')[0]:'')" alt="" />
				<div class="list-4-item-title line1" :style='{"width":"100%","lineHeight":"44px","fontSize":"18px","color":"#000","textAlign":"center"}'>
                    <div>{{jianshenkechengList[2].kechengmingcheng}}</div>
                    <div>{{jianshenkechengList[2].shangkeshijian}}</div>
                    <div>价格:{{jianshenkechengList[2].jiage}}</div>
                    <div>{{jianshenkechengList[2].jiaolianxingming}}</div>
                </div>
			</div>
		</div>
		<div :style='{"margin":"10px 0 0","top":"0px","flexWrap":"wrap","display":"flex","width":"590px","position":"absolute","right":"-140px","height":"auto"}' class="list-4-body">
			<div v-if="jianshenkechengList.length>3" @click="toDetail('jianshenkechengDetail', jianshenkechengList[3])" class="list-4-item animation-box item-4" :style='{"boxShadow":"0px 4px 10px 0px rgba(0,0,0,0.302)","margin":"0 10px","overflow":"hidden","borderRadius":"20px","background":"#fff","display":"inline-block","width":"auto","position":"relative","height":"auto"}'>
				<img :style='{"width":"220px","objectFit":"cover","borderRadius":"20px","height":"305px"}' v-if="preHttp(jianshenkechengList[3].tupian)" :src="jianshenkechengList[3].tupian.split(',')[0]" alt="" />
				<img :style='{"width":"220px","objectFit":"cover","borderRadius":"20px","height":"305px"}' v-else :src="baseUrl + (jianshenkechengList[3].tupian?jianshenkechengList[3].tupian.split(',')[0]:'')" alt="" />
				<div class="list-4-item-title line1" :style='{"width":"100%","lineHeight":"44px","fontSize":"18px","color":"#000","textAlign":"center"}'>
                    <div>{{jianshenkechengList[3].kechengmingcheng}}</div>
                    <div>{{jianshenkechengList[3].shangkeshijian}}</div>
                    <div>价格:{{jianshenkechengList[3].jiage}}</div>
                    <div>{{jianshenkechengList[3].jiaolianxingming}}</div>
                </div>
			</div>
			<div v-if="jianshenkechengList.length>4" @click="toDetail('jianshenkechengDetail', jianshenkechengList[4])" class="list-4-item animation-box item-5" :style='{"boxShadow":"0px 4px 10px 0px rgba(0,0,0,0.302)","margin":"0 20px","flexDirection":"column","display":"flex","right":"90px","overflow":"hidden","top":"0","borderRadius":"20px","flexWrap":"wrap","background":"#fff","width":"220px","position":"absolute","height":"auto"}'>
				<img :style='{"width":"100%","objectFit":"cover","borderRadius":"20px","height":"305px"}' v-if="preHttp(jianshenkechengList[4].tupian)" :src="jianshenkechengList[4].tupian.split(',')[0]" alt="" />
				<img :style='{"width":"100%","objectFit":"cover","borderRadius":"20px","height":"305px"}' v-else :src="baseUrl + (jianshenkechengList[4].tupian?jianshenkechengList[4].tupian.split(',')[0]:'')" alt="" />
				<div class="list-4-item-title line1" :style='{"width":"100%","lineHeight":"44px","fontSize":"18px","color":"#000","textAlign":"center"}'>
                    <div>{{jianshenkechengList[4].kechengmingcheng}}</div>
                    <div>{{jianshenkechengList[4].shangkeshijian}}</div>
                    <div>价格:{{jianshenkechengList[4].jiage}}</div>
                    <div>{{jianshenkechengList[4].jiaolianxingming}}</div>
                </div>
			</div>
		</div>
	</div>






	<div @click="moreBtn('jianshenkecheng')" :style='{"border":"0","margin":"0px auto","borderRadius":"10px","textAlign":"center","background":"#c7d4b9","bottom":"120px","display":"block","width":"150px","lineHeight":"50px","position":"absolute","right":"500px"}'>
		<span :style='{"color":"#333","fontSize":"12px"}'>查看更多</span>
		<i v-if="true" :style='{"color":"#333","fontSize":"12px"}' class="el-icon-d-arrow-right"></i>
	</div>


</div>
<div class="lists" :style='{"margin":"0 0 10px","backgroundSize":"100% 100%","position":"relative","background":"#fff","backgroundImage":"url(http://codegen.caihongy.cn/20221015/31b091a5dcd4468aa3453056f179329f.png)","height":"auto"}'>
	<div v-if="false" class="idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
		<div class="box1" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box2" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box3" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box4" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box5" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box6" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box7" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box8" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box9" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box10" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
	</div>

	<div class="title" :style='{"width":"200px","margin":"50px auto","lineHeight":"54px","textAlign":"center"}'>
	  <span :style='{"color":"#000","fontSize":"30px"}'>健身商品展示</span>
	</div>





	<!-- 样式四 -->
	<div class="list list4 index-pv1" :style='{"width":"1000px","padding":"10px","margin":"0 auto","position":"relative","height":"800px"}'>
		<div v-if="jianshenshangpinList.length>0" class="list-4-item animation-box" @click="toDetail('jianshenshangpinDetail', jianshenshangpinList[0])" :style='{"boxShadow":"0px 4px 10px 0px rgba(0,0,0,0.302)","margin":"0 10px","overflow":"hidden","borderRadius":"20px","flexWrap":"wrap","flexDirection":"column","background":"#fff","display":"flex","width":"274px","position":"relative","height":"auto"}'>
			<img :style='{"width":"100%","objectFit":"cover","borderRadius":"20px","height":"400px"}' v-if="preHttp(jianshenshangpinList[0].tupian)" :src="jianshenshangpinList[0].tupian.split(',')[0]" alt="" />
			<img :style='{"width":"100%","objectFit":"cover","borderRadius":"20px","height":"400px"}' v-else :src="baseUrl + (jianshenshangpinList[0].tupian?jianshenshangpinList[0].tupian.split(',')[0]:'')" alt="" />
			<div class="list-4-item-title line1" :style='{"width":"100%","lineHeight":"44px","fontSize":"18px","color":"#000","textAlign":"center"}'>
                <div>{{jianshenshangpinList[0].shangpinmingcheng}}</div>
                <div>{{jianshenshangpinList[0].shangpinleixing}}</div>
            </div>
		</div>
		<div :style='{"margin":"0 0 10px","top":"10px","left":"310px","flexDirection":"column","display":"flex","width":"210px","position":"absolute","height":"auto"}' class="list-4-body">
			<div v-if="jianshenshangpinList.length>1" @click="toDetail('jianshenshangpinDetail', jianshenshangpinList[1])" class="list-4-item animation-box item-2" :style='{"boxShadow":"0px 4px 10px 0px rgba(0,0,0,0.302)","margin":"0 10px 20px","overflow":"hidden","borderRadius":"20px","flexWrap":"wrap","background":"#fff","display":"inline-block","width":"210px","position":"relative","height":"auto"}'>
				<img :style='{"width":"100%","objectFit":"cover","borderRadius":"20px","height":"120px"}' v-if="preHttp(jianshenshangpinList[1].tupian)" :src="jianshenshangpinList[1].tupian.split(',')[0]" alt="" />
				<img :style='{"width":"100%","objectFit":"cover","borderRadius":"20px","height":"120px"}' v-else :src="baseUrl + (jianshenshangpinList[1].tupian?jianshenshangpinList[1].tupian.split(',')[0]:'')" alt="" />
				<div class="list-4-item-title line1" :style='{"width":"100%","lineHeight":"44px","fontSize":"18px","color":"#000","textAlign":"center"}'>
                    <div>{{jianshenshangpinList[1].shangpinmingcheng}}</div>
                    <div>{{jianshenshangpinList[1].shangpinleixing}}</div>
                </div>
			</div>
			<div v-if="jianshenshangpinList.length>2" @click="toDetail('jianshenshangpinDetail', jianshenshangpinList[2])" class="list-4-item animation-box item-3" :style='{"boxShadow":"0px 4px 10px 0px rgba(0,0,0,0.302)","margin":"0 10px","overflow":"hidden","borderRadius":"20px","flexWrap":"wrap","flexDirection":"column","background":"#fff","display":"flex","width":"210px","position":"relative","height":"auto"}'>
				<img :style='{"width":"100%","objectFit":"cover","borderRadius":"20px","height":"120px"}' v-if="preHttp(jianshenshangpinList[2].tupian)" :src="jianshenshangpinList[2].tupian.split(',')[0]" alt="" />
				<img :style='{"width":"100%","objectFit":"cover","borderRadius":"20px","height":"120px"}' v-else :src="baseUrl + (jianshenshangpinList[2].tupian?jianshenshangpinList[2].tupian.split(',')[0]:'')" alt="" />
				<div class="list-4-item-title line1" :style='{"width":"100%","lineHeight":"44px","fontSize":"18px","color":"#000","textAlign":"center"}'>
                    <div>{{jianshenshangpinList[2].shangpinmingcheng}}</div>
                    <div>{{jianshenshangpinList[2].shangpinleixing}}</div>
                </div>
			</div>
		</div>
		<div :style='{"margin":"10px 0 0","top":"0px","flexWrap":"wrap","display":"flex","width":"590px","position":"absolute","right":"-140px","height":"auto"}' class="list-4-body">
			<div v-if="jianshenshangpinList.length>3" @click="toDetail('jianshenshangpinDetail', jianshenshangpinList[3])" class="list-4-item animation-box item-4" :style='{"boxShadow":"0px 4px 10px 0px rgba(0,0,0,0.302)","margin":"0 10px","overflow":"hidden","borderRadius":"20px","background":"#fff","display":"inline-block","width":"auto","position":"relative","height":"auto"}'>
				<img :style='{"width":"220px","objectFit":"cover","borderRadius":"20px","height":"305px"}' v-if="preHttp(jianshenshangpinList[3].tupian)" :src="jianshenshangpinList[3].tupian.split(',')[0]" alt="" />
				<img :style='{"width":"220px","objectFit":"cover","borderRadius":"20px","height":"305px"}' v-else :src="baseUrl + (jianshenshangpinList[3].tupian?jianshenshangpinList[3].tupian.split(',')[0]:'')" alt="" />
				<div class="list-4-item-title line1" :style='{"width":"100%","lineHeight":"44px","fontSize":"18px","color":"#000","textAlign":"center"}'>
                    <div>{{jianshenshangpinList[3].shangpinmingcheng}}</div>
                    <div>{{jianshenshangpinList[3].shangpinleixing}}</div>
                </div>
			</div>
			<div v-if="jianshenshangpinList.length>4" @click="toDetail('jianshenshangpinDetail', jianshenshangpinList[4])" class="list-4-item animation-box item-5" :style='{"boxShadow":"0px 4px 10px 0px rgba(0,0,0,0.302)","margin":"0 20px","flexDirection":"column","display":"flex","right":"90px","overflow":"hidden","top":"0","borderRadius":"20px","flexWrap":"wrap","background":"#fff","width":"220px","position":"absolute","height":"auto"}'>
				<img :style='{"width":"100%","objectFit":"cover","borderRadius":"20px","height":"305px"}' v-if="preHttp(jianshenshangpinList[4].tupian)" :src="jianshenshangpinList[4].tupian.split(',')[0]" alt="" />
				<img :style='{"width":"100%","objectFit":"cover","borderRadius":"20px","height":"305px"}' v-else :src="baseUrl + (jianshenshangpinList[4].tupian?jianshenshangpinList[4].tupian.split(',')[0]:'')" alt="" />
				<div class="list-4-item-title line1" :style='{"width":"100%","lineHeight":"44px","fontSize":"18px","color":"#000","textAlign":"center"}'>
                    <div>{{jianshenshangpinList[4].shangpinmingcheng}}</div>
                    <div>{{jianshenshangpinList[4].shangpinleixing}}</div>
                </div>
			</div>
		</div>
	</div>






	<div @click="moreBtn('jianshenshangpin')" :style='{"border":"0","margin":"0px auto","borderRadius":"10px","textAlign":"center","background":"#c7d4b9","bottom":"120px","display":"block","width":"150px","lineHeight":"50px","position":"absolute","right":"500px"}'>
		<span :style='{"color":"#333","fontSize":"12px"}'>查看更多</span>
		<i v-if="true" :style='{"color":"#333","fontSize":"12px"}' class="el-icon-d-arrow-right"></i>
	</div>


</div>


</div>
</template>

<script>
  export default {
    //数据集合
    data() {
      return {
        baseUrl: '',
        newsList: [],

        jianshenjiaolianList: [],
        jianshenqicaiList: [],
        jianshenkechengList: [],
        jianshenshangpinList: [],
      }
    },
    created() {
      this.baseUrl = this.$config.baseUrl;
      this.getNewsList();
      this.getList();
    },
    //方法集合
    methods: {
      preHttp(str) {
          return str && str.substr(0,4)=='http';
      },
		getNewsList() {
			this.$http.get('news/list', {params: {
				page: 1,
				limit: 10,
			order: 'desc'}}).then(res => {
				if (res.data.code == 0) {
					this.newsList = res.data.data.list;


				}
			});
		},
		getList() {
          let autoSortUrl = "";

			this.$http.get('jianshenjiaolian/list', {params: {
				page: 1,
				limit: 6,
			}}).then(res => {
				if (res.data.code == 0) {
					this.jianshenjiaolianList = res.data.data.list;

					// 商品列表样式五

				}
			});
			this.$http.get('jianshenqicai/list', {params: {
				page: 1,
				limit: 6,
			}}).then(res => {
				if (res.data.code == 0) {
					this.jianshenqicaiList = res.data.data.list;

					// 商品列表样式五

				}
			});
			this.$http.get('jianshenkecheng/list', {params: {
				page: 1,
				limit: 6,
			}}).then(res => {
				if (res.data.code == 0) {
					this.jianshenkechengList = res.data.data.list;

					// 商品列表样式五

				}
			});
			this.$http.get('jianshenshangpin/list', {params: {
				sort : 'faburiqi',
				order: 'desc',
				page: 1,
				limit: 6,
			}}).then(res => {
				if (res.data.code == 0) {
					this.jianshenshangpinList = res.data.data.list;

					// 商品列表样式五

				}
			});
		},
		toDetail(path, item) {
			this.$router.push({path: '/index/' + path, query: {detailObj: JSON.stringify(item)}});
		},
		moreBtn(path) {
			this.$router.push({path: '/index/' + path});
		}
    }
  }
</script>

<style rel="stylesheet/scss" lang="scss" scoped>
	.home-preview {

		.recommend {
			.list3 .swiper-button-prev {
				left: 10px;
				right: auto;
			}

			.list3 .swiper-button-prev::after {
				color: rgb(64, 158, 255);
			}

			.list3 .swiper-button-next {
				left: auto;
				right: 10px;
			}

			.list3 .swiper-button-next::after {
				color: rgb(64, 158, 255);
			}

			.list5 .swiper-button-prev {
				left: 10px;
				right: auto;
			}

			.list5 .swiper-button-prev::after {
				color: rgb(64, 158, 255);
        }

        .list5 .swiper-button-next {
				left: auto;
				right: 10px;
			}

			.list5 .swiper-button-next::after {
				color: rgb(64, 158, 255);
			}

			.list5 {
				.swiper-slide-prev {
					position: relative;
					z-index: 3;
				}

				.swiper-slide-next {
					position: relative;
					z-index: 3;
				}

				.swiper-slide-active {
					position: relative;
					z-index: 5;
				}
			}

			.index-pv1 .animation-box {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				z-index: initial;
			}

			.index-pv1 .animation-box:hover {
				transform: skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				-webkit-perspective: 1000px;
				perspective: 1000px;
				transition: 0.3s;
				z-index: 1;
			}

			.index-pv1 .animation-box img {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			}

			.index-pv1 .animation-box img:hover {
				transform: scale(0.98) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				-webkit-perspective: 1000px;
				perspective: 1000px;
				transition: 0.3s;
			}
		}

		.news {
			.list3 .swiper-button-prev {
				left: 10px;
				right: auto;
			}

			.list3 .swiper-button-prev::after {
				color: rgb(64, 158, 255);
			}

			.list3 .swiper-button-next {
				left: auto;
				right: 10px;
			}

			.list3 .swiper-button-next::after {
				color: rgb(64, 158, 255);
			}

			.list6 .swiper-button-prev {
				left: 10px;
				right: auto;
			}

			.list6 .swiper-button-prev::after {
				color: rgb(64, 158, 255);
			}

			.list6 .swiper-button-next {
				left: auto;
				right: 10px;
			}

			.list6 .swiper-button-next::after {
				color: rgb(64, 158, 255);
			}

			.index-pv1 .animation-box {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				z-index: initial;
			}

			.index-pv1 .animation-box:hover {
				transform: skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				-webkit-perspective: 1000px;
				perspective: 1000px;
				transition: 0.3s;
				z-index: 1;
			}

			.index-pv1 .animation-box img {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			}

			.index-pv1 .animation-box img:hover {
				transform: scale(0.95) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				-webkit-perspective: 1000px;
				perspective: 1000px;
				transition: 0.3s;
			}
		}

		.lists {
			.list3 .swiper-button-prev {
				left: 10px;
				right: auto;
			}

			.list3 .swiper-button-prev::after {
				color: rgb(64, 158, 255);
			}

			.list3 .swiper-button-next {
				left: auto;
				right: 10px;
        }

        .list3 .swiper-button-next::after {
				color: rgb(64, 158, 255);
			}

			.list5 .swiper-button-prev {
				left: 10px;
				right: auto;
			}

			.list5 .swiper-button-prev::after {
				color: rgb(64, 158, 255);
			}

			.list5 .swiper-button-next {
            left: auto;
            right: 10px;
			}

			.list5 .swiper-button-next::after {
				color: rgb(64, 158, 255);
			}

			.list5 {
				.swiper-slide-prev {
					position: relative;
					z-index: 3;
				}

				.swiper-slide-next {
					position: relative;
					z-index: 3;
				}

				.swiper-slide-active {
					position: relative;
					z-index: 5;
				}
			}

			.index-pv1 .animation-box {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				z-index: initial;
			}

			.index-pv1 .animation-box:hover {
				transform: skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				-webkit-perspective: 1000px;
				perspective: 1000px;
				transition: 0.3s;
				z-index: 1;
			}

			.index-pv1 .animation-box img {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			}

			.index-pv1 .animation-box img:hover {
				transform: scale(0.95) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				-webkit-perspective: 1000px;
				perspective: 1000px;
				transition: 0.3s;
			}
		}
	}
</style>
