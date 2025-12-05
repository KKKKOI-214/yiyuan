<template>
	<div class="navbar">
		<div class="title" :style='{"margin":"0","textAlign":"center","left":"20px","background":"none","display":"block","width":"auto","position":"absolute","order":"1"}'>
			<el-image v-if="false" class="title-img" :style='{"width":"44px","objectFit":"cover","borderRadius":"100%","float":"left","height":"44px"}' src="http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg" fit="cover" />
			<span class="title-name" :style='{"padding":"0 0 0 12px","lineHeight":"44px","fontSize":"24px","color":"#333","fontWeight":"500"}'>{{this.$project.projectName}}</span>
		</div>
		<!-- 天气 -->
		<div class="weather" :style='{"padding":"0 0px","margin":"0 20px 0 0","alignItems":"center","justifyContent":"center","display":"flex","order":"2"}'>
		  <div :style='{"padding":"0 4px","fontSize":"inherit","lineHeight":"44px","color":"inherit"}'>{{weather.city}}</div>
		  <div :style='{"padding":"0 4px","fontSize":"inherit","lineHeight":"44px","color":"inherit"}'>{{weather.tem}}°</div>
		  <div :style='{"padding":"0 4px","fontSize":"inherit","lineHeight":"44px","color":"inherit"}'>{{weather.wea}}</div>
		  <div :style='{"padding":"0 4px","fontSize":"inherit","lineHeight":"44px","color":"inherit"}'>{{weather.win}}</div>
		  <div :style='{"padding":"0 4px","fontSize":"inherit","lineHeight":"44px","color":"inherit"}'>{{weather.win_speed}}</div>
		</div>
		<!-- 时间 -->
		<div :style='{"padding":"0 4px","fontSize":"inherit","lineHeight":"44px","color":"inherit","order":"3"}'>{{times}}</div>
		<!-- 系统通知-2 -->
		<div id="div1" :style='{"border":"0px solid #ddd","margin":"0 20px 0 50px","overflow":"hidden","borderRadius":"4px","background":"rgba(255, 255, 255, 1)","borderWidth":"0px 0px 0px 0","width":"350px","position":"relative","height":"40px","order":"4"}'>
		  <div :style='{"padding":"0 24px 0 30px","color":"#333","background":"url(http://codegen.caihongy.cn/20231104/c7c3d5e9240249ab93c3758d7fba2069.png) no-repeat left center / 22px,#fff","display":"inline-block","lineHeight":"40px","fontSize":"inherit","position":"relative","zIndex":"1"}'>公告</div>
		  <ul :style='{"padding":"0 0 0 80px","position":"absolute","top":"0","left":"0"}'>
		    <li :style='{"width":"400px","listStyle":"none","lineHeight":"40px","fontSize":"inherit","color":"#333","float":"left"}' v-html="noticeDetail.content"></li>
		  </ul>
		</div>
		<!--
		<div class="right" :style='{"position":"absolute","right":"20px","top":"8px","display":"flex"}'>
			<div :style='{"cursor":"pointer","margin":"0 5px","lineHeight":"44px","color":"#333"}' class="nickname">{{this.$storage.get('role')}} {{this.$storage.get('adminName')}}</div>
			<div :style='{"cursor":"pointer","margin":"0 5px","lineHeight":"44px","color":"#666"}' v-if="this.$storage.get('role')!='管理员'" class="logout" @click="onIndexTap">退出到前台</div>
			<div :style='{"cursor":"pointer","margin":"0 5px","lineHeight":"44px","color":"#666"}' class="logout" @click="onLogout">退出登录</div>
		</div>
		-->
		
		<el-dropdown @command="handleCommand" trigger="click" :style='{"fontSize":"inherit","position":"fixed","right":"60px","color":"inherit","display":"inline-block","zIndex":"9999"}'>
		  <div class="el-dropdown-link" :style='{"alignItems":"center","display":"flex"}'>
		    <el-image v-if="user" :style='{"width":"40px","margin":"0 10px","objectFit":"cover","borderRadius":"100%","display":"inline-block","height":"40px"}' :src="avatar?this.$base.url + avatar : require('@/assets/img/avator.png')" fit="cover"></el-image>
		    <span :style='{"color":"inherit","lineHeight":"32px","fontSize":"14px"}'>{{this.$storage.get('adminName')}}</span>
		    <span class="icon iconfont icon-xiala" :style='{"margin":"0 0 0 5px","fontSize":"14px","color":"inherit","display":"none"}'></span>
		  </div>
		  <el-dropdown-menu class="top-el-dropdown-menu" slot="dropdown">
		    <el-dropdown-item class="item1" :command="''">Home</el-dropdown-item>
		    <el-dropdown-item class="item2" :command="'center'">我的资料</el-dropdown-item>
		    <el-dropdown-item v-if="this.$storage.get('role')!='管理员'" class="item3" :command="'front'">访问前台</el-dropdown-item>
		    <el-dropdown-item class="item4" :command="'logout'">退出系统</el-dropdown-item>
		  </el-dropdown-menu>
		</el-dropdown>
	</div>
</template>

<script>
	import axios from 'axios'
	export default {
		data() {
			return {
				dialogVisible: false,
				ruleForm: {},
				user: null,
				// 时间
				times: '',
				// 天气
				weather: {},
				// 系统公告
				noticeDetail: {},
			};
		},
		created() {
			this.$nextTick(() => {
				// 获取时间
				this.setTimes()
			})
			// 获取天气
			this.getWeather()
			// 系统公告
			this.getNotice()
		},
		computed: {
			avatar(){
				return this.$storage.get('headportrait')?this.$storage.get('headportrait'):''
			},
		},
		mounted() {
			let sessionTable = this.$storage.get("sessionTable")
			this.$http({
				url: sessionTable + '/session',
				method: "get"
			}).then(({
				data
			}) => {
				if (data && data.code === 0) {
					if(sessionTable == 'yonghu') {
						this.$storage.set('headportrait',data.data.touxiang)
					}
					if(sessionTable == 'yisheng') {
						this.$storage.set('headportrait',data.data.touxiang)
					}
					if(sessionTable == 'users') {
						this.$storage.set('headportrait',data.data.image)
					}
					this.$storage.set('userForm',JSON.stringify(data.data))
					this.user = data.data;
					this.$storage.set('userid',data.data.id);
				} else {
					let message = this.$message
					message.error(data.msg);
				}
			});
		},
		methods: {
			// 获取当前时间
			setTimes() {
				setInterval(()=>{
					let d = new Date()
					this.times = d.getFullYear() + '-' + (d.getMonth() + 1) + '-' + d.getDate() + ' ' + d.getHours() + ':' + d.getMinutes() + ':' + d.getSeconds()
				},1000)
			},
			// 获取当前城市天气
			getWeather(){
				axios({
					method: 'get',
					url: 'http://v0.yiketianqi.com/free/day?appid=69475998&appsecret=rldbX1Zl'
				}).then(res => {
					this.weather = res.data
				})
			},
			// 获取系统公告
			getNotice() {
				this.$http({
				    url: '/systemnotice/detail/1',
				    method: "get"
				}).then(({data})=>{
                    if ( data && data.code==0 ) {
						this.noticeDetail = data.data
						this.$nextTick(() => {
							this.notice()
						})
					}
				})
			},
			notice() {
			  var oDiv = document.getElementById('div1');
			  var oUl = oDiv.getElementsByTagName('ul')[0];
			  var aLi = oUl.getElementsByTagName('li');
			  var speed = 5;
			  oUl.innerHTML = oUl.innerHTML + oUl.innerHTML;
			  oUl.style.width = aLi[0].offsetWidth * aLi.length + 'px';
			
			  function move() {
			  	if (oUl.offsetLeft < -oUl.offsetWidth / 2) { //因为第一个offsetLeft可能是负数，所以要加一个负号
			  		oUl.style.left = '0';
			  	}
			  	if (oUl.offsetLeft > 0) {
			  		oUl.style.left = -oUl.offsetWidth / 2 + 'px';
			  	}
			  	oUl.style.left = oUl.offsetLeft - speed + 'px';
			  }
			  this.timer = setInterval(move, 100);
			
			  oDiv.addEventListener('mouseenter', e => {
			    e.stopPropagation()
			    clearInterval(this.timer);
			  })
			  oDiv.addEventListener('mouseleave', e => {
			    e.stopPropagation()
			    this.timer = setInterval(move, 100);
			  })
			},
			handleCommand(name) {
				if (name == 'front') {
					this.onIndexTap()
				} else if (name == 'logout') {
					this.onLogout()
				} else if (name == 'board'){
					this.toBoard()
				} else if (name == 'backUp'){
					this.backUp()
				} 
				else {
					let router = this.$router
					name = '/'+name
					router.push(name)
				}
			},
			onLogout() {
				let storage = this.$storage
				let router = this.$router
				storage.clear()
				this.$store.dispatch('tagsView/delAllViews')
				router.replace({
					name: "login"
				});
			},
			onIndexTap(){
				window.location.href = `${this.$base.indexUrl}`
			},
		}
	};
</script>


<style lang="scss" scoped>
	.top-el-dropdown-menu {
				border: 1px solid #EBEEF5;
				border-radius: 4px;
				padding: 10px 0;
				box-shadow: 0 0px 0px 0 rgba(0,0,0,.1);
				margin: 18px 0;
				background: #FFF;
				min-width: 120px;
			}
	
	.top-el-dropdown-menu li.el-dropdown-menu__item.item1 {
				cursor: pointer;
				padding: 0 20px;
				margin: 0;
				outline: 0;
				color: #606266;
				background: #fff;
				font-size: 14px;
				line-height: 36px;
				list-style: none;
			}
	
	.top-el-dropdown-menu li.el-dropdown-menu__item.item1:hover {
				background: #ecf5ff;
			}
	
	.top-el-dropdown-menu li.el-dropdown-menu__item.item2 {
				cursor: pointer;
				padding: 0 20px;
				margin: 0;
				outline: 0;
				color: #606266;
				background: #fff;
				font-size: 14px;
				line-height: 36px;
				list-style: none;
			}
	
	.top-el-dropdown-menu li.el-dropdown-menu__item.item2:hover {
				background: #ecf5ff;
			}
	
	.top-el-dropdown-menu li.el-dropdown-menu__item.item3 {
				cursor: pointer;
				padding: 0 20px;
				margin: 0;
				outline: 0;
				color: #606266;
				background: #fff;
				font-size: 14px;
				line-height: 36px;
				list-style: none;
			}
	
	.top-el-dropdown-menu li.el-dropdown-menu__item.item3:hover {
				background: #ecf5ff;
			}
	
	.top-el-dropdown-menu li.el-dropdown-menu__item.item4 {
				cursor: pointer;
				padding: 0 20px;
				margin: 0;
				outline: 0;
				color: #606266;
				background: #fff;
				font-size: 14px;
				line-height: 36px;
				list-style: none;
			}
	
	.top-el-dropdown-menu li.el-dropdown-menu__item.item4:hover {
				background: #ecf5ff;
			}
	.top-el-dropdown-menu li.el-dropdown-menu__item.item5 {
				cursor: pointer;
				padding: 0 20px;
				margin: 0;
				outline: 0;
				color: #606266;
				background: #fff;
				font-size: 14px;
				line-height: 36px;
				list-style: none;
			}
	
	.top-el-dropdown-menu li.el-dropdown-menu__item.item5:hover {
				background: #ecf5ff;
			}
	.top-el-dropdown-menu li.el-dropdown-menu__item.item6 {
				cursor: pointer;
				padding: 0 20px;
				margin: 0;
				outline: 0;
				color: #606266;
				background: #fff;
				font-size: 14px;
				line-height: 36px;
				list-style: none;
			}
	
	.top-el-dropdown-menu li.el-dropdown-menu__item.item6:hover {
				background: #ecf5ff;
			}
</style>
