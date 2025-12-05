<template>
<div>
	<div class="container" :style='{"minHeight":"calc(100vh - 70px)","borderColor":"#d7eaff","alignItems":"center","background":"url(http://codegen.caihongy.cn/20231128/4426e8245c254fa88b7032f81fb1e71b.jpg)","borderWidth":"35px 140px 35px 140px","display":"flex","width":"100%","backgroundSize":"cover","backgroundPosition":"center center","borderStyle":"solid","backgroundRepeat":"no-repeat","justifyContent":"flex-start"}'>
		<el-form ref="loginForm" :model="loginForm" :style='{"minHeight":"calc(100vh - 72px)","padding":"0 180px","margin":"0","borderRadius":"0px","flexWrap":"wrap","background":"#fff","display":"flex","width":"calc(53% - 0px)","position":"relative","height":"auto"}' :rules="rules">
			<div v-if="false" :style='{"width":"100%","margin":"0 0 10px 0","lineHeight":"44px","fontSize":"18px","color":"#333","textAlign":"center"}'>USER / LOGIN</div>
			<div v-if="true" :style='{"margin":"80px auto 0px","color":"#1e3c4f","textAlign":"center","width":"100%","letterSpacing":"2px","lineHeight":"44px","fontSize":"32px","fontWeight":"600"}'>医疗预约与诊断系统登录</div>
			<el-form-item v-if="loginType==1" class="list-item" :style='{"width":"400px","margin":"0 auto 10px"}' prop="username">
				<div v-if="true" :style='{"color":"#333","textAlign":"right","left":"-100px","background":"none","display":"inline-block","width":"100px","lineHeight":"36px","fontSize":"14px","position":"absolute"}'>账号：</div>
				<input :style='{"padding":"0 10px","borderColor":"#333","color":"#666","borderRadius":"0px","borderWidth":"1px","width":"400px","fontSize":"14px","borderStyle":"solid","height":"50px"}' v-model="loginForm.username" placeholder="请输入账号">
			</el-form-item>
			<el-form-item v-if="loginType==1" class="list-item" :style='{"width":"400px","margin":"0 auto 10px"}' prop="password">
				<div v-if="true" :style='{"color":"#333","textAlign":"right","left":"-100px","background":"none","display":"inline-block","width":"100px","lineHeight":"36px","fontSize":"14px","position":"absolute"}'>密码：</div>
				<input :style='{"padding":"0 10px","borderColor":"#333","color":"#666","borderRadius":"0px","borderWidth":"1px","width":"400px","fontSize":"14px","borderStyle":"solid","height":"50px"}' v-model="loginForm.password" placeholder="请输入密码" type="password">
			</el-form-item>

			<el-form-item class="list-type select" :style='{"width":"400px","margin":"0 auto 10px"}' v-if="roles.length>1">
			  <el-select v-model="loginForm.tableName" placeholder="请选择角色" @change="selectChange">
				<el-option v-for="item,index in roles" :key="index" :label="item.roleName" :value="item.tableName" />
			  </el-select>
			</el-form-item>

			  <div v-if="flag" class="mask" style="position: fixed;z-index: 998;top: 0;right: 0;left: 0;bottom: 0;background: rgba(0,0,0,.5);"></div>
			  <!-- option3 -->
			  <div v-if="flag" class="box" :style='{"padding":"0 24px 24px","transform":"translate3d(-50%,-50%,0)","top":"50%","borderRadius":"20px","left":"50%","background":"#fff","position":"fixed","zIndex":999}'>
			  	<span @click="flag = !flag" :style='{"cursor":"pointer","padding":"10px","top":"0","fontSize":"20px","position":"absolute","right":"0","zIndex":1}' class="icon iconfont guanbi icon-guanbi1"></span>
			  	<div :style='{"lineHeight":"40px","fontSize":"18px","color":"#000","textAlign":"center"}'>身份验证</div>
			  	<div :style='{"width":"300px","padding":"20px","height":"auto"}' id="option3" class="rotateverify-contaniner">
			  		<div :style='{"position":"relative"}' class="rotate-can-wrap">
			  			<canvas width="500" height="500" :style='{"width":"260px","height":"260px"}' class="rotateCan rotate-can"></canvas>
			  			<span :style='{"padding":"80px","backgroundColor":"rgba(0,0,0,.3)","color":"#fff","display":"none","top":0,"borderRadius":"100%","left":0,"width":"260px","fontSize":"100px","position":"absolute","backgroundPosition":"center center","backgroundRepeat":"no-repeat","height":"260px"}' class="icon iconfont statusBg"></span>
			  		</div>
			  		<div :style='{"margin":"10px 0 0","borderRadius":"40px","background":"#f7f7f7","clear":"both","width":"100%","position":"relative","height":"40px"}' class="control-wrap slideDragWrap">
			  			<div :style='{"width":"100%","position":"relative","height":"100%"}' class="control-tips">
			  				<p :style='{"overflow":"hidden","whiteSpace":"nowrap","top":0,"color":"#333","textAlign":"center","left":0,"width":"100%","lineHeight":"40px","fontSize":"16px","position":"absolute","textOverflow":"ellipsis","height":"40px"}' class="c-tips-txt cTipsTxt">滑动将图片转正</p>
			  			</div>
			  			<div :style='{"border":"1px solid transparent","top":0,"borderRadius":"40px","left":0,"width":"40px","position":"absolute","height":"40px"}' class="control-bor-wrap controlBorWrap"></div>
			  			<div :style='{"border":"1px solid #e0e0e0","top":0,"borderRadius":"40px","alignItems":"center","color":"#666","left":0,"background":"#fff","display":"flex","width":"40px","position":"absolute","justifyContent":"center","height":"40px"}' class="control-btn slideDragBtn">
			  				<span :style='{"color":"inherit","fontSize":"18px"}' class="icon iconfont icon-gengduo1"></span>
			  			</div>
			  		</div>
			  	</div>
			  </div>
			
			<el-form-item class="list-btn" :style='{"width":"400px","margin":"20px auto","order":"10"}'>
				<el-button v-if="loginType==1" :style='{"border":"0","cursor":"pointer","padding":"0 24px","margin":"0 0px","outline":"none","color":"#fff","borderRadius":"8px","background":"#1e3c4f","width":"100%","letterSpacing":"4px","fontSize":"18px","height":"50px"}' @click="submitForm('loginForm')">登录</el-button>
				<el-button v-if="loginType==1" :style='{"border":"0","cursor":"pointer","padding":"0 0px","margin":"0 5px","outline":"none","color":"#999","borderRadius":"4px","textAlign":"right","background":"none","width":"100%","fontSize":"14px","height":"40px"}' @click="resetForm('loginForm')">重置</el-button>
			</el-form-item>
			<div :style='{"width":"400px","margin":"0px auto","flexWrap":"wrap","background":"#fff","display":"flex"}'>
			<router-link :style='{"cursor":"pointer","border":"1px solid #ffffff50","padding":"0px","margin":"0 0 20px","color":"#1e3c4f","borderRadius":"4px","background":"none","width":"33%","fontSize":"16px","textDecoration":"underline"}' :to="{path: '/register', query: {role: item.tableName,pageFlag:'register'}}" v-if="item.hasFrontRegister=='是'" v-for="(item, index) in roles" :key="index">注册{{item.roleName.replace('注册','')}}</router-link>
			</div>
			<div class="idea1" :style='{"width":"100%","background":"red","display":"none","height":"40px"}'></div>
			<div class="idea2" :style='{"width":"100%","background":"blue","display":"none","height":"40px"}'></div>
		</el-form>
    </div>
</div>
</template>

<script>
import menu from '@/config/menu'
export default {
	//数据集合
	data() {
		return {
            baseUrl: this.$config.baseUrl,
            loginType: 1,
			roleMenus: [],
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
					{ required: true, message: '请输入账号', trigger: 'blur' }
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
			}],
			flag: false,
			verifyCheck2: false,
		}
	},
  components: {
  },
	created() {
		this.roleMenus = menu.list()
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
	  selectChange(e){
		  for(let x in this.roles){
			  if(this.roles[x].tableName == e){
				  this.role = this.roles[x].roleName
			  }
		  }
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

		this.flag = true
		this.$nextTick(()=>{
			this.setVerify(formName)
		})
      },
      resetForm(formName) {
        this.$refs[formName].resetFields();
      },
	  loginPost(formName) {
		this.$refs[formName].validate((valid) => {
		  if (valid) {
		    this.$http.get(`${this.loginForm.tableName}/login`, {params: this.loginForm}).then(res => {
		      if (res.data.code === 0) {
		        localStorage.setItem('frontToken', res.data.token);
		        localStorage.setItem('UserTableName', this.loginForm.tableName);
		        localStorage.setItem('username', this.loginForm.username);
		        // localStorage.setItem('adminName', this.loginForm.username);
		        localStorage.setItem('frontSessionTable', this.loginForm.tableName);
		        localStorage.setItem('frontRole', this.role);
		        localStorage.setItem('keyPath', 0);
		        this.$router.push('/');
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
	  setVerify(formName) {
		// option3
		new RotateVerify('#option3', {
			initText: '滑动将图片转正',
			slideImage: [{"name":"图14.jpg","uid":1696821928975,"url":"http://codegen.caihongy.cn/20231009/a2732d6fe93048338bb9f55b36b243a0.jpg","status":"success"},{"name":"图15.jpg","uid":1696821931202,"url":"http://codegen.caihongy.cn/20231009/4a1f4c4739904086a3fb539962b37c1b.jpg","status":"success"},{"name":"图16.jpg","uid":1696821933506,"url":"http://codegen.caihongy.cn/20231009/c64b62c2407a477ba4a6c105552624fc.jpg","status":"success"}].map((item)=>{return item.url}),
			slideAreaNum: 10,
			getSuccessState: () => {
				setTimeout(()=>{
				  this.flag = false
				  this.loginPost(formName)
				},2500)
		  }
		})
	  },
    }
  }
</script>

<style rel="stylesheet/scss" lang="scss" scoped>
	.container {
		position: relative;
		background: url(http://codegen.caihongy.cn/20231128/4426e8245c254fa88b7032f81fb1e71b.jpg);
		
		.el-form-item {
		  & /deep/ .el-form-item__content {
		    width: 100%;
		  }
		}
		
		.list-item /deep/ .el-form-item__content {
			display: flex;
			width: 100%;
		}

		.list-code /deep/ .el-form-item__content {
			display: flex;
			width: 400px;
			justify-content: space-between;
		}

		.list-type /deep/ .el-form-item__content {
			padding: 0px;
			margin: 20px 0 0;
			display: flex;
		}

		.list-btn /deep/ .el-form-item__content {
			display: flex;
			justify-content: center;
			flex-wrap: wrap;
		}
		
		.list-item /deep/ .el-input .el-input__inner {
			border-radius: 0px;
			padding: 0 10px;
			color: #666;
			width: 400px;
			font-size: 14px;
			border-color: #333;
			border-width: 1px;
			border-style: solid;
			height: 50px;
		}
		
		.list-code /deep/ .el-input .el-input__inner {
			border-radius: 0px;
			padding: 0 10px;
			outline: none;
			color: #666;
			display: inline-block;
			vertical-align: middle;
			width: calc(100% - 110px);
			font-size: 14px;
			border-color: #333;
			border-width: 1px;
			border-style: solid;
			height: 50px;
		}

		// select
		.list-type.select .el-select /deep/ .el-input__inner {
			border-radius: 0px;
			padding: 0 10px;
			color: #666;
			width: 400px;
			font-size: 14px;
			border-color: #333;
			border-width: 1px;
			border-style: solid;
			height: 50px;
		}
	}

	#option3 /deep/ .control-bor-wrap {
				border: 1px solid transparent;
				border-radius: 40px;
				top: 0;
				left: 0;
				width: 40px;
				position: absolute;
				height: 40px;
			}
	
	#option3 /deep/ .control-bor-wrap.control-bor-active {
				border: 1px solid #1a91ed;
			}
	
	#option3 /deep/ .control-bor-wrap.control-bor-suc {
				border: 1px solid rgb(92, 184, 92);
			}
	
	#option3 /deep/ .control-bor-wrap.control-bor-err {
				border: 1px solid red;
			}
	
	#option3 /deep/ .control-btn-wrap {
				border: 1px solid #e0e0e0;
				border-radius: 40px;
				top: 0;
				color: #666;
				left: 0;
				background: #fff;
				display: flex;
				width: 40px;
				justify-content: center;
				align-items: center;
				position: absolute;
				height: 40px;
			}
	
	#option3 /deep/ .control-btn-wrap.control-btn-active {
				color: #fff;
				background: #1a91ed;
			}
	
	#option3 /deep/ .control-btn-wrap.control-btn-suc {
				color: #fff;
				background: rgb(92, 184, 92);
			}
	
	#option3 /deep/ .control-btn-wrap.control-btn-err {
				color: #fff;
				background: red;
			}
</style>
