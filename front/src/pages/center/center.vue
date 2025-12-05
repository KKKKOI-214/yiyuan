<template>
<div class="center-preview" :style='{"padding":"0 7%","margin":"20px auto 40px","flexWrap":"wrap","background":"none","display":"block","width":"100%","position":"relative","justifyContent":"space-between"}'>
	<div class="title" :style='{"padding":"12px 0 0","margin":"0px auto","color":"#1b394c","textAlign":"left","background":"url(http://codegen.caihongy.cn/20231009/8f2613f5f198426ab730d135e0a2e138.png) no-repeat 120px center","width":"100%","fontSize":"24px","fontWeight":"600","height":"60px"}'>{{ title }}</div>
	
	<div class="info" :style='{"padding":"50px 20px 10px","boxShadow":"0 0px 0px rgba(0, 0, 0, 0.3)","margin":"20px 0 0 0","borderColor":"#28890b20","alignItems":"center","display":"flex","right":"7%","borderRadius":"0px","flexWrap":"wrap","background":"#fff","borderWidth":"0px","width":"calc(86% - 260px)","position":"absolute","borderStyle":"solid","height":"auto","order":"2"}'>
		<div :style='{"padding":"8px 30px","borderColor":"#eee","margin":"0 20px 0 0","color":"#fff","letterSpacing":"0px","borderRadius":"0 0 6px 6px","top":"0","borderWidth":"0px","background":"#1e3c4f","width":"auto","lineHeight":"1.5","fontSize":"16px","position":"absolute","borderStyle":"solid","fontWeight":"600","height":"auto"}'>个人信息</div>
		<div :style='{"width":"auto","borderColor":"#1abc9e20","fontSize":0,"borderStyle":"solid","borderWidth":"0 0 0px 0","height":"auto"}' v-if="userTableName=='yonghu'">
			<el-image :style='{"margin":"10px auto","borderColor":"#efefef","objectFit":"cover","borderRadius":"100%","borderWidth":"0 0 1px 0","display":"block","width":"90px","borderStyle":"solid","height":"90px"}' :src="sessionForm.touxiang?baseUrl + sessionForm.touxiang:require('@/assets/avator.png')" fit="cover"></el-image>
		</div>
		<div :style='{"width":"auto","borderColor":"#1abc9e20","fontSize":0,"borderStyle":"solid","borderWidth":"0 0 0px 0","height":"auto"}' v-if="userTableName=='yisheng'">
			<el-image :style='{"margin":"10px auto","borderColor":"#efefef","objectFit":"cover","borderRadius":"100%","borderWidth":"0 0 1px 0","display":"block","width":"90px","borderStyle":"solid","height":"90px"}' :src="sessionForm.touxiang?baseUrl + sessionForm.touxiang:require('@/assets/avator.png')" fit="cover"></el-image>
		</div>
		<div :style='{"padding":"0 20px","borderColor":"#1abc9e20","margin":"0 auto","borderWidth":"0 0 0px 0","display":"flex","width":"auto","lineHeight":"40px","borderStyle":"solid","height":"auto"}' v-if="userTableName=='yonghu'">
			<span class="icon iconfont icon-shouye-zhihui" :style='{"padding":"0 5px","fontSize":"14px","color":"#333","display":"none"}'></span>
			<div :style='{"color":"#666","margin":"0 10px 0 0","fontSize":"14px"}'>账号</div>
			<div :style='{"fontSize":"14px","color":"#999","textAlign":"left","flex":1}'>{{sessionForm.zhanghao}}</div>
		</div>
		<div :style='{"padding":"0 20px","borderColor":"#1abc9e20","margin":"0 auto","borderWidth":"0 0 0px 0","display":"flex","width":"auto","lineHeight":"40px","borderStyle":"solid","height":"auto"}' v-if="userTableName=='yonghu'">
			<span class="icon iconfont icon-shouye-zhihui" :style='{"padding":"0 5px","fontSize":"14px","color":"#333","display":"none"}'></span>
			<div :style='{"color":"#666","margin":"0 10px 0 0","fontSize":"14px"}'>性别</div>
			<div :style='{"fontSize":"14px","color":"#999","textAlign":"left","flex":1}'>{{sessionForm.xingbie}}</div>
		</div>
		<div :style='{"padding":"0 20px","borderColor":"#1abc9e20","margin":"0 auto","borderWidth":"0 0 0px 0","display":"flex","width":"auto","lineHeight":"40px","borderStyle":"solid","height":"auto"}' v-if="userTableName=='yonghu'">
			<span class="icon iconfont icon-shouye-zhihui" :style='{"padding":"0 5px","fontSize":"14px","color":"#333","display":"none"}'></span>
			<div :style='{"color":"#666","margin":"0 10px 0 0","fontSize":"14px"}'>姓名</div>
			<div :style='{"fontSize":"14px","color":"#999","textAlign":"left","flex":1}'>{{sessionForm.xingming}}</div>
		</div>
		<div :style='{"padding":"0 20px","borderColor":"#1abc9e20","margin":"0 auto","borderWidth":"0 0 0px 0","display":"flex","width":"auto","lineHeight":"40px","borderStyle":"solid","height":"auto"}' v-if="userTableName=='yonghu'">
			<span class="icon iconfont icon-shouye-zhihui" :style='{"padding":"0 5px","fontSize":"14px","color":"#333","display":"none"}'></span>
			<div :style='{"color":"#666","margin":"0 10px 0 0","fontSize":"14px"}'>年龄</div>
			<div :style='{"fontSize":"14px","color":"#999","textAlign":"left","flex":1}'>{{sessionForm.nianling}}</div>
		</div>
		<div :style='{"padding":"0 20px","borderColor":"#1abc9e20","margin":"0 auto","borderWidth":"0 0 0px 0","display":"flex","width":"auto","lineHeight":"40px","borderStyle":"solid","height":"auto"}' v-if="userTableName=='yonghu'">
			<span class="icon iconfont icon-shouye-zhihui" :style='{"padding":"0 5px","fontSize":"14px","color":"#333","display":"none"}'></span>
			<div :style='{"color":"#666","margin":"0 10px 0 0","fontSize":"14px"}'>手机号码</div>
			<div :style='{"fontSize":"14px","color":"#999","textAlign":"left","flex":1}'>{{sessionForm.shoujihaoma}}</div>
		</div>


		<div :style='{"padding":"0 20px","borderColor":"#1abc9e20","margin":"0 auto","borderWidth":"0 0 0px 0","display":"flex","width":"auto","lineHeight":"40px","borderStyle":"solid","height":"auto"}' v-if="userTableName=='yisheng'">
			<span class="icon iconfont icon-shouye-zhihui" :style='{"padding":"0 5px","fontSize":"14px","color":"#333","display":"none"}'></span>
			<div :style='{"color":"#666","margin":"0 10px 0 0","fontSize":"14px"}'>医生工号</div>
			<div :style='{"fontSize":"14px","color":"#999","textAlign":"left","flex":1}'>{{sessionForm.yishenggonghao}}</div>
		</div>
		<div :style='{"padding":"0 20px","borderColor":"#1abc9e20","margin":"0 auto","borderWidth":"0 0 0px 0","display":"flex","width":"auto","lineHeight":"40px","borderStyle":"solid","height":"auto"}' v-if="userTableName=='yisheng'">
			<span class="icon iconfont icon-shouye-zhihui" :style='{"padding":"0 5px","fontSize":"14px","color":"#333","display":"none"}'></span>
			<div :style='{"color":"#666","margin":"0 10px 0 0","fontSize":"14px"}'>医生姓名</div>
			<div :style='{"fontSize":"14px","color":"#999","textAlign":"left","flex":1}'>{{sessionForm.yishengxingming}}</div>
		</div>
		<div :style='{"padding":"0 20px","borderColor":"#1abc9e20","margin":"0 auto","borderWidth":"0 0 0px 0","display":"flex","width":"auto","lineHeight":"40px","borderStyle":"solid","height":"auto"}' v-if="userTableName=='yisheng'">
			<span class="icon iconfont icon-shouye-zhihui" :style='{"padding":"0 5px","fontSize":"14px","color":"#333","display":"none"}'></span>
			<div :style='{"color":"#666","margin":"0 10px 0 0","fontSize":"14px"}'>医生性别</div>
			<div :style='{"fontSize":"14px","color":"#999","textAlign":"left","flex":1}'>{{sessionForm.yishengxingbie}}</div>
		</div>
		<div :style='{"padding":"0 20px","borderColor":"#1abc9e20","margin":"0 auto","borderWidth":"0 0 0px 0","display":"flex","width":"auto","lineHeight":"40px","borderStyle":"solid","height":"auto"}' v-if="userTableName=='yisheng'">
			<span class="icon iconfont icon-shouye-zhihui" :style='{"padding":"0 5px","fontSize":"14px","color":"#333","display":"none"}'></span>
			<div :style='{"color":"#666","margin":"0 10px 0 0","fontSize":"14px"}'>联系手机</div>
			<div :style='{"fontSize":"14px","color":"#999","textAlign":"left","flex":1}'>{{sessionForm.lianxishouji}}</div>
		</div>
		
	</div>
	
    <el-tabs tab-position="left" :style='{"width":"100%","margin":"20px 0 0","background":"none"}' @tab-click="handleClick">
      <el-tab-pane label="个人中心">
        <el-form class="center-preview-pv" ref="sessionForm" :model="sessionForm" :rules="rules" label-width="100px">
          <el-form-item :style='{"width":"auto","padding":"0px","margin":"0 0 40px","background":"none","display":"inline-block"}' v-if="userTableName=='yonghu'" label="账号" prop="zhanghao">
            <el-input v-model="sessionForm.zhanghao" placeholder="账号" readonly></el-input>
          </el-form-item>
          <el-form-item :style='{"width":"auto","padding":"0px","margin":"0 0 40px","background":"none","display":"inline-block"}' v-if="userTableName=='yonghu'" label="性别" prop="xingbie">
            <el-select v-model="sessionForm.xingbie" placeholder="请选择性别" >
              <el-option v-for="(item, index) in dynamicProp.xingbie" :key="index" :label="item" :value="item"></el-option>
            </el-select>
          </el-form-item>
          <el-form-item :style='{"width":"auto","padding":"0px","margin":"0 0 40px","background":"none","display":"inline-block"}' v-if="userTableName=='yonghu'" label="姓名" prop="xingming">
            <el-input v-model="sessionForm.xingming" placeholder="姓名" ></el-input>
          </el-form-item>
          <el-form-item :style='{"width":"auto","padding":"0px","margin":"0 0 40px","background":"none","display":"inline-block"}' v-if="userTableName=='yonghu'" label="年龄" prop="nianling">
            <el-input v-model="sessionForm.nianling" placeholder="年龄" ></el-input>
          </el-form-item>
          <el-form-item :style='{"width":"auto","padding":"0px","margin":"0 0 40px","background":"none","display":"inline-block"}' v-if="userTableName=='yonghu'" label="手机号码" prop="shoujihaoma">
            <el-input v-model="sessionForm.shoujihaoma" placeholder="手机号码" ></el-input>
          </el-form-item>

          <el-form-item :style='{"width":"auto","padding":"0px","margin":"0 0 40px","background":"none","display":"inline-block"}' v-if="userTableName=='yonghu'" label="余额" prop="shoujihaoma">
            <el-input v-model="sessionForm.money" readonly placeholder="余额"></el-input>
          </el-form-item>
          <div @click="dialogFormVisibleMoney = true" :style='{"cursor":"pointer","padding":"0 15px","margin":"2px 20px 0 10px","borderColor":"#f9eacc","color":"#fff","display":"inline-block","borderRadius":"0px","background":"#b4a078","borderWidth":"0px","width":"auto","lineHeight":"36px","fontSize":"14px","borderStyle":"solid","height":"36px"}'>点我充值</div>


          <el-form-item :style='{"width":"auto","padding":"0px","margin":"0 0 40px","background":"none","display":"inline-block"}' v-if="userTableName=='yonghu'" label="头像" prop="touxiang">
			<file-upload
			tip="点击上传头像"
			action="file/upload"
			:limit="1"
			:multiple="true"
			:fileUrls="sessionForm.touxiang?sessionForm.touxiang:''"
			@change="yonghutouxiangHandleAvatarSuccess"
			></file-upload>
          </el-form-item>
          <el-form-item :style='{"width":"auto","padding":"0px","margin":"0 0 40px","background":"none","display":"inline-block"}' v-if="userTableName=='yisheng'" label="医生工号" prop="yishenggonghao">
            <el-input v-model="sessionForm.yishenggonghao" placeholder="医生工号" readonly></el-input>
          </el-form-item>
          <el-form-item :style='{"width":"auto","padding":"0px","margin":"0 0 40px","background":"none","display":"inline-block"}' v-if="userTableName=='yisheng'" label="医生姓名" prop="yishengxingming">
            <el-input v-model="sessionForm.yishengxingming" placeholder="医生姓名" ></el-input>
          </el-form-item>
          <el-form-item :style='{"width":"auto","padding":"0px","margin":"0 0 40px","background":"none","display":"inline-block"}' v-if="userTableName=='yisheng'" label="医生性别" prop="yishengxingbie">
            <el-select v-model="sessionForm.yishengxingbie" placeholder="请选择医生性别" >
              <el-option v-for="(item, index) in dynamicProp.yishengxingbie" :key="index" :label="item" :value="item"></el-option>
            </el-select>
          </el-form-item>
          <el-form-item :style='{"width":"auto","padding":"0px","margin":"0 0 40px","background":"none","display":"inline-block"}' v-if="userTableName=='yisheng'" label="联系手机" prop="lianxishouji">
            <el-input v-model="sessionForm.lianxishouji" placeholder="联系手机" ></el-input>
          </el-form-item>
          <el-form-item :style='{"width":"auto","padding":"0px","margin":"0 0 40px","background":"none","display":"inline-block"}' v-if="userTableName=='yisheng'" label="头像" prop="touxiang">
			<file-upload
			tip="点击上传头像"
			action="file/upload"
			:limit="1"
			:multiple="true"
			:fileUrls="sessionForm.touxiang?sessionForm.touxiang:''"
			@change="yishengtouxiangHandleAvatarSuccess"
			></file-upload>
          </el-form-item>
          <el-form-item :style='{"padding":"0","margin":"0"}'>
            <el-button :style='{"border":"0","cursor":"pointer","padding":"0","margin":"0 20px 0 0","outline":"none","color":"rgba(255, 255, 255, 1)","borderRadius":"8px","background":"#1e3c4f","width":"110px","lineHeight":"36px","fontSize":"14px","height":"36px"}' type="primary" @click="onSubmit('sessionForm')">更新信息</el-button>
            <el-button :style='{"border":"1px solid #1e3c4f","cursor":"pointer","padding":"0","margin":"0","outline":"none","color":"#1e3c4f","borderRadius":"8px","background":"none","width":"110px","lineHeight":"36px","fontSize":"14px","height":"36px"}' type="danger" @click="logout">退出登录</el-button>
          </el-form-item>
        </el-form>
      </el-tab-pane>
	  <el-tab-pane label="修改密码">
		<el-form class="center-preview-pv" ref="passwordForm" :model="passwordForm" :rules="passwordRules" label-width="100px">
			<el-form-item :style='{"width":"auto","padding":"0px","margin":"0 0 40px","background":"none","display":"inline-block"}' label="原密码" prop="password">
			  <el-input type="password" v-model="passwordForm.password" placeholder="原密码"></el-input>
			</el-form-item>
			<el-form-item :style='{"width":"auto","padding":"0px","margin":"0 0 40px","background":"none","display":"inline-block"}' label="新密码" prop="newpassword">
			  <el-input type="password" v-model="passwordForm.newpassword" placeholder="新密码"></el-input>
			</el-form-item>
			<el-form-item :style='{"width":"auto","padding":"0px","margin":"0 0 40px","background":"none","display":"inline-block"}' label="确认密码" prop="repassword">
			  <el-input type="password" v-model="passwordForm.repassword" placeholder="确认密码"></el-input>
			</el-form-item>
			<el-form-item :style='{"padding":"0","margin":"0"}'>
			  <el-button :style='{"border":"0","cursor":"pointer","padding":"0","margin":"0 20px 0 0","outline":"none","color":"rgba(255, 255, 255, 1)","borderRadius":"8px","background":"#1e3c4f","width":"110px","lineHeight":"36px","fontSize":"14px","height":"36px"}' type="primary" @click="updatePassword">修改密码</el-button>
			</el-form-item>
		</el-form>
	  </el-tab-pane>
		<el-tab-pane v-for="(item,index) in menuList" :key="index" v-if="hasBack(item.menu)" :label="item.child[0].menu" :name="item.child[0].tableName"></el-tab-pane>
   
        <el-tab-pane label="我的收藏"></el-tab-pane>
    </el-tabs>


	<el-dialog title="用户充值" :visible.sync="dialogFormVisibleMoney" width="726px" center>
	  <el-form :model="sessionForm">
		<el-form-item label="充值金额" label-width="120px">
		  <el-input type="number" v-model="addmoney" autocomplete="off" placeholder="充值金额"></el-input>
		</el-form-item>
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
		<el-button type="primary" @click="chongzhi">确认充值</el-button>
	  </div>
	</el-dialog>

</div>
</template>

<script>
  import config from '@/config/config'
  import menu from '@/config/menu'
  import Vue from 'vue'
  export default {
    //数据集合
    data() {
      return {
        title: '个人中心',
        baseUrl: config.baseUrl,
        sessionForm: {},
		passwordForm: {},
		dialogFormVisibleMoney: false,
		addmoney: '',
		radio: '',
		passwordRules: {
			password: [
				{
					required: true,
					message: "密码不能为空",
					trigger: "blur"
				}
			],
			newpassword: [
				{
					required: true,
					message: "新密码不能为空",
					trigger: "blur"
				}
			],
			repassword: [
				{
					required: true,
					message: "确认密码不能为空",
					trigger: "blur"
				}
			]
		},
        rules: {},
		menuList: [],
        disabled: false,
        uploadUrl: config.baseUrl + 'file/upload',
        imageUrl: '',
        headers: {Token: localStorage.getItem('frontToken')},
        userTableName: localStorage.getItem('UserTableName'),
        dynamicProp: {},
      }
    },
    created() {
		let menus = menu.list()
		for(let x in menus){
			if(menus[x].tableName == this.userTableName){
				this.menuList = menus[x].backMenu
			}
		}
		if ('yonghu' == this.userTableName) {
			this.$set(this.sessionForm, 'zhanghao', null);
		}
		if ('yonghu' == this.userTableName) {
			this.$set(this.sessionForm, 'mima', null);
		}
		if ('yonghu' == this.userTableName) {
			this.$set(this.sessionForm, 'xingbie', null);
		}
		if ('yonghu' == this.userTableName) {
			this.$set(this.sessionForm, 'xingming', null);
		}
		if ('yonghu' == this.userTableName) {
			this.$set(this.sessionForm, 'nianling', null);
		}
		if ('yonghu' == this.userTableName) {
			this.$set(this.sessionForm, 'shoujihaoma', null);
		}

		if ('yonghu' == this.userTableName) {
			this.$set(this.sessionForm, 'money', null);
		}
		if ('yonghu' == this.userTableName) {
			this.$set(this.sessionForm, 'touxiang', null);
		}
		if ('yisheng' == this.userTableName) {
			this.$set(this.sessionForm, 'yishenggonghao', null);
		}
		if ('yisheng' == this.userTableName) {
			this.$set(this.sessionForm, 'mima', null);
		}
		if ('yisheng' == this.userTableName) {
			this.$set(this.sessionForm, 'yishengxingming', null);
		}
		if ('yisheng' == this.userTableName) {
			this.$set(this.sessionForm, 'yishengxingbie', null);
		}
		if ('yisheng' == this.userTableName) {
			this.$set(this.sessionForm, 'lianxishouji', null);
		}
		if ('yisheng' == this.userTableName) {
			this.$set(this.sessionForm, 'touxiang', null);
		}

		if ('yonghu' == this.userTableName&&this.rules['zhanghao']){
			this.rules['zhanghao'].push({ required: true, message: '请输入账号', trigger: 'blur' })
		}else if('yonghu' == this.userTableName&&!this.rules['zhanghao']) {
			this.$set(this.rules, 'zhanghao', [{ required: true, message: '请输入账号', trigger: 'blur' }]);
		}
		if ('yonghu' == this.userTableName&&this.rules['mima']){
			this.rules['mima'].push({ required: true, message: '请输入密码', trigger: 'blur' })
		}else if('yonghu' == this.userTableName&&!this.rules['mima']) {
			this.$set(this.rules, 'mima', [{ required: true, message: '请输入密码', trigger: 'blur' }]);
		}
		if ('yonghu' == this.userTableName&&this.rules['xingming']){
			this.rules['xingming'].push({ required: true, message: '请输入姓名', trigger: 'blur' })
		}else if('yonghu' == this.userTableName&&!this.rules['xingming']) {
			this.$set(this.rules, 'xingming', [{ required: true, message: '请输入姓名', trigger: 'blur' }]);
		}
		if ('yonghu' == this.userTableName) {
			this.$set(this.rules, 'nianling', [{ required: false, validator: this.$validate.isIntNumer, trigger: 'blur' }]);
		}
		if ('yonghu' == this.userTableName) {
			this.$set(this.rules, 'shoujihaoma', [{ required: false, validator: this.$validate.isMobile, trigger: 'blur' }]);
		}
		if ('yisheng' == this.userTableName&&this.rules['yishenggonghao']){
			this.rules['yishenggonghao'].push({ required: true, message: '请输入医生工号', trigger: 'blur' })
		}else if('yisheng' == this.userTableName&&!this.rules['yishenggonghao']) {
			this.$set(this.rules, 'yishenggonghao', [{ required: true, message: '请输入医生工号', trigger: 'blur' }]);
		}
		if ('yisheng' == this.userTableName&&this.rules['mima']){
			this.rules['mima'].push({ required: true, message: '请输入密码', trigger: 'blur' })
		}else if('yisheng' == this.userTableName&&!this.rules['mima']) {
			this.$set(this.rules, 'mima', [{ required: true, message: '请输入密码', trigger: 'blur' }]);
		}
		if ('yisheng' == this.userTableName&&this.rules['yishengxingming']){
			this.rules['yishengxingming'].push({ required: true, message: '请输入医生姓名', trigger: 'blur' })
		}else if('yisheng' == this.userTableName&&!this.rules['yishengxingming']) {
			this.$set(this.rules, 'yishengxingming', [{ required: true, message: '请输入医生姓名', trigger: 'blur' }]);
		}
		if ('yisheng' == this.userTableName) {
			this.$set(this.rules, 'lianxishouji', [{ required: false, validator: this.$validate.isMobile, trigger: 'blur' }]);
		}

      this.init();
      this.sessionForm = JSON.parse(localStorage.getItem('sessionForm'))
    },
    //方法集合
    methods: {
      init() {
        if ('yonghu' == this.userTableName) {
          this.dynamicProp.xingbie = '男,女'.split(',');
        }
        if ('yisheng' == this.userTableName) {
          this.dynamicProp.yishengxingbie = '男,女'.split(',');
        }
      },
	  setSession(){
		  localStorage.setItem('sessionForm',JSON.stringify(this.sessionForm))
	  },
      onSubmit(formName) {
		if(`yonghu` == this.userTableName && this.sessionForm.touxiang!=null){
			this.sessionForm.touxiang = this.sessionForm.touxiang.replace(new RegExp(this.$config.baseUrl,"g"),"");
		}
		if(`yisheng` == this.userTableName && this.sessionForm.touxiang!=null){
			this.sessionForm.touxiang = this.sessionForm.touxiang.replace(new RegExp(this.$config.baseUrl,"g"),"");
		}
        this.$refs[formName].validate((valid) => {
			if (valid) {
				this.$http.post(this.userTableName + '/update', this.sessionForm).then(res => {
					if (res.data.code == 0) {
						this.setSession()
						this.$message({
							message: '更新成功',
							type: 'success',
							duration: 1500
						});
					}
				});
			} else {
				return false;
			}
        });
      },
      yonghutouxiangHandleAvatarSuccess(fileUrls) {
        this.sessionForm.touxiang = fileUrls;
      },
      yishengtouxiangHandleAvatarSuccess(fileUrls) {
        this.sessionForm.touxiang = fileUrls;
      },
      handleClick(tab, event) {
        switch(event.target.outerText) {
          case '个人中心':
            tab.$router.push('/index/center');
            break;
          case '修改密码':
            this.passwordForm = {
				password: '',
				newpassword: '',
				repassword: '',
			}
			this.$forceUpdate()
            break;
          case '我的地址':
            tab.$router.push('/index/shop-address/list');
            break;
          case '我的收藏':
            localStorage.setItem('storeupType', 1);
            tab.$router.push('/index/storeup');
            break;
		  default:
		  	tab.$router.push(`/index/${tab.name}?centerType=1`);
        }

        this.title = event.target.outerText;
      },
	  async updatePassword(){
			this.$refs["passwordForm"].validate(async valid => {
				if (valid) {
					var password = "";
					if (this.sessionForm.mima) {
						password = this.sessionForm.mima;
					} else if (this.sessionForm.password) {
						password = this.sessionForm.password;
					}
					if (this.passwordForm.password != password) {
						this.$message.error("原密码错误");
						return;
					}
					if (this.passwordForm.newpassword != this.passwordForm.repassword) {
						this.$message.error("两次密码输入不一致");
						return;
					}
					if (this.passwordForm.newpassword == this.passwordForm.password) {
						this.$message.error("新密码与原密码相同！");
						return;
					}
					if (this.userTableName == 'yonghu') {
					}
					this.sessionForm.password = this.passwordForm.newpassword;
					this.sessionForm.mima = this.passwordForm.newpassword;
					this.$http.post(`${this.userTableName}/update`,this.sessionForm).then(({data})=>{
						if (data && data.code === 0) {
							this.$message({
								message: "修改密码成功,下次登录系统生效",
								type: "success",
								duration: 1500,
								onClose: () => {
								}
							});
							this.setSession()
						} else {
							this.$message.error(data.msg);
						}
					});
				}
			})
	  },
      logout() {
        localStorage.clear();
        Vue.http.headers.common['Token'] = "";
        this.$router.push('/index/home');
        this.activeIndex = '0'
        localStorage.setItem('keyPath', this.activeIndex)
        this.$forceUpdate()
        this.$message({
            message: '登出成功',
            type: 'success',
            duration: 1500,
        });
      },

      chongzhi(){
           if (this.radio == '') {
              this.$message({
                message: '请选择充值方式',
                type: 'error',
                duration: 1500
              });
              return;
            }

            if (this.addmoney == '') {
              this.$message({
                message: '充值金额未输入或者输入有误',
                type: 'error',
                duration: 1500
              });
              return;
            }
             this.sessionForm.addmoney=this.addmoney;
             var totalmoney;
             this.$http.post(this.userTableName + '/updateMoney', this.sessionForm).then(res => {
                        if (res.data.code == 0) {
                            this.setSession()
                            this.$message({
                                    message: '充值成功',
                                    type: 'success',
                                    duration: 1500,
                                    onClose: () => {
                                        this.$http.get(this.userTableName + '/detail/'+this.sessionForm.id, this.sessionForm).then(res => {
                                            if (res.data.code == 0) {
                                                console.log(res.data.data.money);
                                                this.dialogFormVisibleMoney = false;
                                                this.sessionForm.money=res.data.data.money;
                                            }
                                        })
                                    }
                            });
                        }
              });
      },


	  hasBack(name){
		  switch(name){
			case '我的收藏管理':
				return false
				break;
			default:
				return true
		  }
	  }
    }
  }
</script>

<style rel="stylesheet/scss" lang="scss" scoped>
  .center-preview {
  
    .el-tabs {
      & /deep/ .el-tabs__header {
		.el-tabs__nav{
			overflow: auto;
		}
		::-webkit-scrollbar {
		  -webkit-appearance: none;
		  width: 6px;
		  height: 6px;
		}
		::-webkit-scrollbar-track {
		  background: rgba(0, 0, 0, 0.1);
		  border-radius: 0;
		}
		::-webkit-scrollbar-thumb {
		  cursor: pointer;
		  border-radius: 5px;
		  background: rgba(0, 0, 0, 0.15);
		  transition: color 0.2s ease;
		}
		::-webkit-scrollbar-thumb:hover {
		  background: rgba(0, 0, 0, 0.3);
		}
        .el-tabs__nav-wrap {
          margin: 0;
  
          &::after {
            content: none;
          }
        }
  
        .el-tabs__active-bar {
          display: none !important;
        }
      }
  
      .center-preview-pv {
        .el-date-editor.el-input {
          width: auto;
        }
  
        .balance {
          .el-input {
            width: auto;
          }
        }
      }
    }
  }
  
  .center-preview .el-tabs /deep/ .el-tabs__header {
	padding: 0px;
	margin: 0;
	background: #fff;
	width: 230px;
	border-color: #28890b20;
	border-width: 0 0 0px;
	position: relative;
	border-style: solid;
	float: left;
	text-align: center;
	height: auto;
  }
  
  .center-preview .el-tabs /deep/ .el-tabs__header .el-tabs__item {
  	padding: 0 10px;
  	margin: 0 10px 0 0;
  	color: #666;
  	background: none;
  	font-weight: 500;
  	display: block;
  	width: 100%;
  	font-size: 16px;
  	line-height: 60px;
  	position: relative;
  	text-align: center;
  	height: 60px;
  }
  
  .center-preview .el-tabs /deep/ .el-tabs__header .el-tabs__item:hover {
  	padding: 0 10px;
  	color: #fff;
  	background: #1e3c4f;
  	font-weight: 600;
  	font-size: 16px;
  	line-height: 60px;
  	position: relative;
  	text-align: center;
  	height: 60px;
  }
  
  .center-preview .el-tabs /deep/ .el-tabs__header .el-tabs__item.is-active {
  	padding: 0 10px;
  	margin: 0 10px 0 0;
  	color: #fff;
  	background: #1e3c4f;
  	font-weight: 600;
  	display: inline-block;
  	width: 100%;
  	font-size: 16px;
  	line-height: 60px;
  	position: relative;
  	text-align: center;
  	height: 60px;
  }
  
  .center-preview .el-tabs /deep/ .el-tabs__content {
  	padding: 0px;
  	margin: 200px 0 0;
  	background: none;
  	width: calc(100% - 230px);
  	float: right;
  }
  .center-preview .el-tabs /deep/ .el-tabs__content .el-tab-pane {
  }
  
  .center-preview-pv .el-form-item /deep/ .el-form-item__label {
  	padding: 0 10px 0 0;
  	color: #666;
  	font-weight: 500;
  	width: 100px;
  	font-size: 14px;
  	line-height: 40px;
  	text-align: right;
  }
  
  .center-preview-pv .el-form-item .el-form-item__content {
    margin-left: 100px;
  }
  
  .center-preview-pv .el-input /deep/ .el-input__inner {
  	padding: 0 12px;
  	color: #666;
  	font-size: 14px;
  	border-color: #eee;
  	border-radius: 30px;
  	box-shadow: 0 0 0px rgba(64, 158, 255, .5);
  	outline: none;
  	background: #fff;
  	width: auto;
  	border-width: 0px;
  	border-style: solid;
  	min-width: 400px;
  	height: 40px;
  }
  
  .center-preview-pv .el-select /deep/ .el-input__inner {
  	padding: 0 12px;
  	color: #666;
  	font-size: 14px;
  	border-color: #eee;
  	border-radius: 30px;
  	box-shadow: 0 0 0px rgba(64, 158, 255, .5);
  	outline: none;
  	background: #fff;
  	width: auto;
  	border-width: 0px;
  	border-style: solid;
  	min-width: 400px;
  	height: 40px;
  }
  
  .center-preview-pv .el-date-editor /deep/ .el-input__inner {
  	padding: 0 10px 0 30px;
  	color: #666;
  	font-size: 14px;
  	border-color: #eee;
  	border-radius: 30px;
  	box-shadow: 0 0 0px rgba(64, 158, 255, .5);
  	outline: none;
  	background: #fff;
  	width: auto;
  	border-width: 0px;
  	border-style: solid;
  	min-width: 400px;
  	height: 40px;
  }
  
  .center-preview-pv /deep/ .avatar-uploader-icon {
  	cursor: pointer;
  	color: #666;
  	font-weight: 600;
  	font-size: 24px;
  	border-color: #eee;
  	line-height: 50px;
  	border-radius: 30px;
  	background: #fff;
  	width: 400px;
  	border-width: 0px;
  	border-style: solid;
  	text-align: center;
  	height: 50px;
  }
  
  .center-preview-pv .el-form-item.balance /deep/ .el-input__inner {
  	border-radius: 30px;
  	padding: 0 12px;
  	color: #666;
  	background: #fff;
  	display: inline-block;
  	width: auto;
  	font-size: 14px;
  	border-color: #eee;
  	border-width: 0px;
  	border-style: solid;
  	min-width: 300px;
  	height: 36px;
  }
</style>
