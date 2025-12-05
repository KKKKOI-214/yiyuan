<template>
  <div>
    <div class="container" :style='{"minHeight":"100vh","alignItems":"center","background":"url(http://codegen.caihongy.cn/20231102/3703718595294b8ab9b3afeea844de31.jpg)","display":"flex","width":"100%","backgroundSize":"100% 100%","backgroundPosition":"center center","backgroundRepeat":"no-repeat","justifyContent":"flex-start"}'>
      <el-form :style='{"border":"0px solid #f6f6f6","padding":"20px 5vw 100px","margin":"50px 0 50px 8vw","borderRadius":"8px","textAlign":"center","flexWrap":"wrap","background":"rgba(0,0,0,.5)","display":"flex","width":"35vw","fontSize":"14px","position":"relative","height":"auto"}'>
        <div v-if="true" :style='{"padding":"0 0 0 100px","margin":"20px auto 30px","borderColor":"#ddd","color":"#fff","textAlign":"left","display":"inline-block","background":"url(http://codegen.caihongy.cn/20231102/8510e68829374383b97a281acf720a23.png) no-repeat left center /  80px","borderWidth":"0px","width":"100%","lineHeight":"40px","fontSize":"20px","borderStyle":"solid","fontWeight":"500"}' class="title-container">医疗预约与诊断系统登录</div>
        <div v-if="loginType==1" class="list-item" :style='{"margin":"0 auto 30px","alignItems":"center","flexWrap":"wrap","display":"flex","width":"100%","position":"relative","order":"2"}'>
          <div v-if="false" class="lable" :style='{"width":"100%","lineHeight":"44px","fontSize":"inherit","color":"#666","textAlign":"left"}'>用户名：</div>
          <input :style='{"border":"0px solid #eee","padding":"0 10px","boxShadow":"0 0 0px rgba(64, 158, 255, .3)","outline":"0px solid #eee","color":"#666","outlineOffset":"0px","borderRadius":"30px","background":"#f3f3f3","width":"360px","fontSize":"inherit","height":"40px"}' placeholder="请输入用户名" name="username" type="text" v-model="rulesForm.username">
        </div>
        <div v-if="loginType==1" class="list-item" :style='{"margin":"0 auto 30px","alignItems":"center","flexWrap":"wrap","display":"flex","width":"100%","position":"relative","order":"2"}'>
          <div v-if="false" class="lable" :style='{"width":"100%","lineHeight":"44px","fontSize":"inherit","color":"#666","textAlign":"left"}'>密码：</div>
          <input :style='{"border":"0px solid #eee","padding":"0 10px","boxShadow":"0 0 0px rgba(64, 158, 255, .3)","outline":"0px solid #eee","color":"#666","outlineOffset":"0px","borderRadius":"30px","background":"#f3f3f3","width":"360px","fontSize":"inherit","height":"40px"}' placeholder="请输入密码" name="password" type="password" v-model="rulesForm.password">
        </div>

		<div class="list-item select" :style='{"margin":"0 auto 30px","alignItems":"center","flexWrap":"wrap","display":"flex","width":"100%","position":"relative","order":"2"}' v-if="roles.length>1">
			<div v-if="false" class="lable" :style='{"width":"100%","lineHeight":"44px","fontSize":"inherit","color":"#666","textAlign":"left"}'>角色：</div>
		  <el-select v-model="rulesForm.role" placeholder="请选择角色">
		    <el-option v-if="loginType==1||(loginType==2&&item.roleName!='管理员')" v-for="item in roles" :key="item.roleName" :label="item.roleName" :value="item.roleName" />
		  </el-select>
		</div>

		<div v-if="flag" class="mask" style="position: fixed;z-index: 998;top: 0;right: 0;left: 0;bottom: 0;background: rgba(0,0,0,.5);"></div>
		<!-- option1 -->
		<div v-if="flag" class="box option1" :style='{"padding":"0 24px 24px","transform":"translate3d(-50%,-50%,0)","top":"50%","borderRadius":"20px","left":"50%","background":"#fff","position":"fixed","zIndex":999}'>
		  <span @click="flag = !flag" :style='{"cursor":"pointer","padding":"10px","top":"0","fontSize":"20px","position":"absolute","right":"0","zIndex":1}' class="icon iconfont icon-guanbi1 guanbi"></span>
		  <div :style='{"lineHeight":"40px","fontSize":"18px","color":"#000","textAlign":"center"}'>身份验证</div>
		  <div id="option1" :style='{"width":"400px","padding":"20px","height":"auto"}'></div>
		</div>
		
        <div :style='{"margin":"10px auto 30px","alignItems":"center","flexWrap":"wrap","display":"flex","width":"100%","fontSize":"16px","justifyContent":"flex-start"}'>
          <el-button v-if="loginType==1" :style='{"border":"0","cursor":"pointer","padding":"0 20px","margin":"0 auto 20px","color":"#fff","textAlign":"center","bottom":"20px","minWidth":"140px","outline":"none","borderRadius":"30px","background":"#7c3ef3","width":"auto","fontSize":"16px","position":"absolute","fontWeight":"600","height":"40px"}' type="primary" @click="login()" class="loginInBt">登录</el-button>
          <el-button :style='{"cursor":"pointer","padding":"0 20px 0 0","margin":"0 20px 10px 0","borderColor":"#eee","color":"#fff","borderRadius":"0px","background":"none","borderWidth":"0 1px 0 0","width":"auto","fontSize":"inherit","borderStyle":"solid","fontWeight":"500","height":"auto"}' type="primary" @click="register('yisheng')" class="register">注册医生</el-button>
        </div>
      </el-form>

    </div>
  </div>
</template>
<script>
import menu from "@/utils/menu";
export default {
  data() {
    return {
		verifyCheck2: false,
		flag: false,
      baseUrl:this.$base.url,
      loginType: 1,
      rulesForm: {
        username: "",
        password: "",
        role: "",
      },
      menus: [],
      roles: [],
      tableName: "",
    };
  },
  mounted() {
    let menus = menu.list();
    this.menus = menus;

    for (let i = 0; i < this.menus.length; i++) {
      if (this.menus[i].hasBackLogin=='是') {
        this.roles.push(this.menus[i])
      }
    }

  },
  created() {

  },
  destroyed() {
	    },
  components: {
  },
  methods: {
	setVerify() {
		this.flag = true

		this.$nextTick(() => {
			$('#option1').slideVerify({
				type: 2, //类型
				vOffset: 5, //误差量，根据需求自行调整
				vSpace: 5, //间隔
				imgName: [{"name":"图01.jpg","uid":1696553266757,"url":"http://codegen.caihongy.cn/20231006/5d27c557d2154b309eb312ffefb07da2.jpg","status":"success"},{"name":"图02.jpg","uid":1696553270569,"url":"http://codegen.caihongy.cn/20231006/de4ea60e25384ee6a3f82a63729af0d6.jpg","status":"success"},{"name":"图03.jpg","uid":1696553273428,"url":"http://codegen.caihongy.cn/20231006/0f4a1ad5caac49d7a104781fc52b2b61.jpg","status":"success"}].map((item)=>{return item.url}),
				imgSize: {"width":"400px","height":"200px"},
				blockSize: {"width":"40px","height":"40px"},
				barSize: {"width":"400px","height":"40px"},
				ready: () => {},
				success: () => {
				setTimeout(()=>{
				  this.flag = false
				  this.loginPost()
				},2500)
				}
			})
		})



	},

    //注册
    register(tableName){
		this.$storage.set("loginTable", tableName);
		this.$router.push({path:'/register',query:{pageFlag:'register'}})
    },
    // 登陆
    login() {

		if (!this.rulesForm.username) {
			this.$message.error("请输入用户名");
			return;
		}
		if (!this.rulesForm.password) {
			this.$message.error("请输入密码");
			return;
		}
		if(this.roles.length>1) {
			if (!this.rulesForm.role) {
				this.$message.error("请选择角色");
				return;
			}

			let menus = this.menus;
			for (let i = 0; i < menus.length; i++) {
				if (menus[i].roleName == this.rulesForm.role) {
					this.tableName = menus[i].tableName;
				}
			}
		} else {
			this.tableName = this.roles[0].tableName;
			this.rulesForm.role = this.roles[0].roleName;
		}
		

		this.setVerify()

    },
	loginPost() {
		this.$http({
			url: `${this.tableName}/login?username=${this.rulesForm.username}&password=${this.rulesForm.password}`,
			method: "post"
		}).then(({ data }) => {
			if (data && data.code === 0) {
				this.$storage.set("Token", data.token);
				this.$storage.set("role", this.rulesForm.role);
				this.$storage.set("sessionTable", this.tableName);
				this.$storage.set("adminName", this.rulesForm.username);
				this.$router.replace({ path: "/" });
			} else {
				this.$message.error(data.msg);
			}
		});
	},
  }
}
</script>

<style lang="scss" scoped>
.container {
  min-height: 100vh;
  position: relative;
  background-repeat: no-repeat;
  background-position: center center;
  background-size: cover;
      background: url(http://codegen.caihongy.cn/20231102/3703718595294b8ab9b3afeea844de31.jpg);
        
  .list-item /deep/ .el-input .el-input__inner {
		border: 0px solid #eee;
		border-radius: 30px;
		padding: 0 10px;
		box-shadow: 0 0 0px rgba(64, 158, 255, .3);
		outline: 0px solid #eee;
		color: #666;
		background: #f3f3f3;
		width: 360px;
		font-size: inherit;
		outline-offset: 0px;
		height: 40px;
	  }
  
  .list-item.select /deep/ .el-select .el-input__inner {
		border: 1px solid #eee;
		border-radius: 30px;
		padding: 0 10px;
		color: #666;
		width: 360px;
		font-size: 14px;
		height: 40px;
	  }
  
  .list-code /deep/ .el-input .el-input__inner {
  	  	border: 0px solid #eee;
  	  	border-radius: 30px 0 0 30px;
  	  	padding: 0 10px;
  	  	outline: none;
  	  	color: #666;
  	  	background: #f3f3f3;
  	  	width: 260px;
  	  	font-size: inherit;
  	  	height: 40px;
  	  }

  .list-type /deep/ .el-radio__input .el-radio__inner {
		border-radius: 0;
		background: rgba(53, 53, 53, 0);
		border-color: #666666;
	  }
  .list-type /deep/ .el-radio__input.is-checked .el-radio__inner {
        border-radius: 0;
        background: #589cf6;
        border-color: #589cf6;
      }
  .list-type /deep/ .el-radio__label {
		color: #666666;
		font-size: 16px;
	  }
  .list-type /deep/ .el-radio__input.is-checked+.el-radio__label {
        color: #589cf6;
        font-size: 16px;
      }
}

	#option1 /deep/ .verify-img-panel {
				border-radius: 4px;
				margin: 0 0 5px;
				width: 360px;
				position: relative;
				height: 200px;
			}
  
	#option1 /deep/ .verify-img-panel .verify-refresh {
				cursor: pointer;
				padding: 5px;
				z-index: 2;
				top: 0;
				position: absolute;
				right: 0;
			}
	
	#option1 /deep/ .verify-img-panel .verify-refresh .iconfont {
				color: #fff;
				font-size: 20px;
				line-height: 1;
			}
	
	#option1 /deep/ .verify-bar-area {
				border: 1px solid #ddd;
				background: #FFFFFF;
				width: 360px;
				line-height: 40px;
				position: relative;
				text-align: center;
				height: 40px;
			}
	
	#option1 /deep/ .verify-bar-area .verify-msg {
				color: #333;
				font-size: 16px;
			}
	
	#option1 /deep/ .verify-bar-area .verify-left-bar {
				cursor: pointer;
				border: 1px solid #ddd;
				top: -1px;
				left: -1px;
				background: #f0fff0;
				width: 40px;
				position: absolute;
				height: 40px;
			}
	
	#option1 /deep/ .verify-bar-area .verify-left-bar.verify-left-bar-active {
				border: 1px solid #1a91ed;
			}
	
	#option1 /deep/ .verify-bar-area .verify-left-bar.verify-left-bar-success {
				border: 1px solid rgb(92, 184, 92);
			}
	
	#option1 /deep/ .verify-bar-area .verify-left-bar.verify-left-bar-error {
				border: 1px solid red;
			}
	
	#option1 /deep/ .verify-bar-area .verify-left-bar .verify-move-block {
				cursor: pointer;
				box-shadow: 0 0 2px #888888;
				top: 0;
				left: 0;
				background: #fff;
				width: 38px;
				position: absolute;
				height: 38px;
			}
	
	#option1 /deep/ .verify-bar-area .verify-left-bar.verify-left-bar-active .verify-move-block {
				color: #fff !important;
				background: #1a91ed !important;
			}
	
	#option1 /deep/ .verify-bar-area .verify-left-bar.verify-left-bar-success .verify-move-block {
				color: #fff !important;
				background: rgb(92, 184, 92) !important;
			}
	
	#option1 /deep/ .verify-bar-area .verify-left-bar.verify-left-bar-error .verify-move-block {
				color: #fff !important;
				background: red !important;
			}
	
	#option1 /deep/ .verify-bar-area .verify-left-bar .verify-move-block .verify-icon {
				color: inherit;
				font-size: 18px;
			}
</style>
