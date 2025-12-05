<template>
	<div class="addEdit-block" :style='{"padding":"30px 0","fontSize":"14px","color":"#999","background":"#f6f6f6"}'>
		<el-form
			:style='{"border":"0px solid rgba(255,255,255,1)","padding":"30px","borderRadius":"4px","alignItems":"flex-start","flexWrap":"wrap","background":"rgba(255,255,255,0)","display":"flex","fontSize":"inherit"}'
			class="add-update-preview"
			ref="ruleForm"
			:model="ruleForm"
			:rules="rules"
			label-width="150px"
		>
			<template >
				<el-form-item :style='{"width":"100%","margin":"0 0 30px 0","fontSize":"inherit","color":"inherit"}' class="input" v-if="type!='info'"  label="医生工号" prop="yishenggonghao">
					<el-input v-model="ruleForm.yishenggonghao" placeholder="医生工号" clearable  :readonly="ro.yishenggonghao"></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"100%","margin":"0 0 30px 0","fontSize":"inherit","color":"inherit"}' v-else class="input" label="医生工号" prop="yishenggonghao">
					<el-input v-model="ruleForm.yishenggonghao" placeholder="医生工号" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"100%","margin":"0 0 30px 0","fontSize":"inherit","color":"inherit"}' class="input" v-if="type!='info'"  label="医生姓名" prop="yishengxingming">
					<el-input v-model="ruleForm.yishengxingming" placeholder="医生姓名" clearable  :readonly="ro.yishengxingming"></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"100%","margin":"0 0 30px 0","fontSize":"inherit","color":"inherit"}' v-else class="input" label="医生姓名" prop="yishengxingming">
					<el-input v-model="ruleForm.yishengxingming" placeholder="医生姓名" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"100%","margin":"0 0 30px 0","fontSize":"inherit","color":"inherit"}' class="input" v-if="type!='info'"  label="职位" prop="zhiwei">
					<el-input v-model="ruleForm.zhiwei" placeholder="职位" clearable  :readonly="ro.zhiwei"></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"100%","margin":"0 0 30px 0","fontSize":"inherit","color":"inherit"}' v-else class="input" label="职位" prop="zhiwei">
					<el-input v-model="ruleForm.zhiwei" placeholder="职位" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"100%","margin":"0 0 30px 0","fontSize":"inherit","color":"inherit"}' class="input" v-if="type!='info'"  label="科室名称" prop="keshimingcheng">
					<el-input v-model="ruleForm.keshimingcheng" placeholder="科室名称" clearable  :readonly="ro.keshimingcheng"></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"100%","margin":"0 0 30px 0","fontSize":"inherit","color":"inherit"}' v-else class="input" label="科室名称" prop="keshimingcheng">
					<el-input v-model="ruleForm.keshimingcheng" placeholder="科室名称" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"100%","margin":"0 0 30px 0","fontSize":"inherit","color":"inherit"}' class="input" v-if="type!='info'"  label="就诊时间" prop="jiuzhenshijian">
					<el-input v-model="ruleForm.jiuzhenshijian" placeholder="就诊时间" clearable  :readonly="ro.jiuzhenshijian"></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"100%","margin":"0 0 30px 0","fontSize":"inherit","color":"inherit"}' v-else class="input" label="就诊时间" prop="jiuzhenshijian">
					<el-input v-model="ruleForm.jiuzhenshijian" placeholder="就诊时间" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"100%","margin":"0 0 30px 0","fontSize":"inherit","color":"inherit"}' class="date" v-if="type!='info'" label="诊断时间" prop="zhenduanshijian">
					<el-date-picker
						value-format="yyyy-MM-dd HH:mm:ss"
						v-model="ruleForm.zhenduanshijian" 
						type="datetime"
						:readonly="ro.zhenduanshijian"
						placeholder="诊断时间"
					></el-date-picker>
				</el-form-item>
				<el-form-item :style='{"width":"100%","margin":"0 0 30px 0","fontSize":"inherit","color":"inherit"}' class="input" v-else-if="ruleForm.zhenduanshijian" label="诊断时间" prop="zhenduanshijian">
					<el-input v-model="ruleForm.zhenduanshijian" placeholder="诊断时间" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"100%","margin":"0 0 30px 0","fontSize":"inherit","color":"inherit"}' class="input" v-if="type!='info'"  label="收缩压mmHg" prop="shousuoya">
					<el-input-number v-model="ruleForm.shousuoya" placeholder="收缩压mmHg" :disabled="ro.shousuoya"></el-input-number>
				</el-form-item>
				<el-form-item :style='{"width":"100%","margin":"0 0 30px 0","fontSize":"inherit","color":"inherit"}' v-else class="input" label="收缩压mmHg" prop="shousuoya">
					<el-input v-model="ruleForm.shousuoya" placeholder="收缩压mmHg" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"100%","margin":"0 0 30px 0","fontSize":"inherit","color":"inherit"}' class="input" v-if="type!='info'"  label="舒张压mmHg" prop="shuzhangya">
					<el-input-number v-model="ruleForm.shuzhangya" placeholder="舒张压mmHg" :disabled="ro.shuzhangya"></el-input-number>
				</el-form-item>
				<el-form-item :style='{"width":"100%","margin":"0 0 30px 0","fontSize":"inherit","color":"inherit"}' v-else class="input" label="舒张压mmHg" prop="shuzhangya">
					<el-input v-model="ruleForm.shuzhangya" placeholder="舒张压mmHg" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"100%","margin":"0 0 30px 0","fontSize":"inherit","color":"inherit"}' class="input" v-if="type!='info'"  label="体温/°" prop="tiwen">
					<el-input-number v-model="ruleForm.tiwen" placeholder="体温/°" :disabled="ro.tiwen"></el-input-number>
				</el-form-item>
				<el-form-item :style='{"width":"100%","margin":"0 0 30px 0","fontSize":"inherit","color":"inherit"}' v-else class="input" label="体温/°" prop="tiwen">
					<el-input v-model="ruleForm.tiwen" placeholder="体温/°" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"100%","margin":"0 0 30px 0","fontSize":"inherit","color":"inherit"}' class="upload" v-if="type!='info' && !ro.binglitupian" label="病历图片" prop="binglitupian">
					<file-upload
						tip="点击上传病历图片"
						action="file/upload"
						:limit="3"
						:multiple="true"
						:fileUrls="ruleForm.binglitupian?ruleForm.binglitupian:''"
						@change="binglitupianUploadChange"
					></file-upload>
				</el-form-item>
				<el-form-item :style='{"width":"100%","margin":"0 0 30px 0","fontSize":"inherit","color":"inherit"}' class="upload" v-else-if="ruleForm.binglitupian" label="病历图片" prop="binglitupian">
					<img v-if="ruleForm.binglitupian.substring(0,4)=='http'" class="upload-img" style="margin-right:20px;" v-bind:key="index" :src="ruleForm.binglitupian.split(',')[0]" width="100" height="100">
					<img v-else class="upload-img" style="margin-right:20px;" v-bind:key="index" v-for="(item,index) in ruleForm.binglitupian.split(',')" :src="$base.url+item" width="100" height="100">
				</el-form-item>
				<el-form-item :style='{"width":"100%","margin":"0 0 30px 0","fontSize":"inherit","color":"inherit"}' class="upload" v-if="type!='info'&& !ro.zhenduanbaogao" label="诊断报告" prop="zhenduanbaogao">
					<file-upload
						tip="点击上传诊断报告"
						action="file/upload"
						:limit="1"
						:type="3"
						:multiple="true"
						:fileUrls="ruleForm.zhenduanbaogao?ruleForm.zhenduanbaogao:''"
						@change="zhenduanbaogaoUploadChange"
					></file-upload>
				</el-form-item>  
				<el-form-item :style='{"width":"100%","margin":"0 0 30px 0","fontSize":"inherit","color":"inherit"}' v-else-if="ruleForm.zhenduanbaogao" label="诊断报告" prop="zhenduanbaogao">
					<el-button :style='{"border":"2px solid #9c9c9c","cursor":"pointer","padding":"0 20px","margin":"0 20px 0 0","color":"inherit","textAlign":"left","minWidth":"500px","outline":"none","borderRadius":"0px","background":"none","width":"auto","lineHeight":"36px","fontSize":"14px","height":"36px"}' type="text" size="small" @click="download($base.url+ruleForm.zhenduanbaogao)">下载</el-button>
				</el-form-item>
				<el-form-item :style='{"width":"100%","margin":"0 0 30px 0","fontSize":"inherit","color":"inherit"}' v-else-if="!ruleForm.zhenduanbaogao" label="诊断报告" prop="zhenduanbaogao">
					<el-button :style='{"border":"2px solid #9c9c9c","cursor":"pointer","padding":"0 20px","margin":"0 20px 0 0","color":"inherit","textAlign":"left","minWidth":"500px","outline":"none","borderRadius":"0px","background":"none","width":"auto","lineHeight":"36px","fontSize":"14px","height":"36px"}' type="text" size="small">无</el-button>
				</el-form-item>
				<el-form-item :style='{"width":"100%","margin":"0 0 30px 0","fontSize":"inherit","color":"inherit"}' class="input" v-if="type!='info'"  label="诊断结果" prop="zhenduanjieguo">
					<el-input v-model="ruleForm.zhenduanjieguo" placeholder="诊断结果" clearable  :readonly="ro.zhenduanjieguo"></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"100%","margin":"0 0 30px 0","fontSize":"inherit","color":"inherit"}' v-else class="input" label="诊断结果" prop="zhenduanjieguo">
					<el-input v-model="ruleForm.zhenduanjieguo" placeholder="诊断结果" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"100%","margin":"0 0 30px 0","fontSize":"inherit","color":"inherit"}' class="input" v-if="type!='info'"  label="账号" prop="zhanghao">
					<el-input v-model="ruleForm.zhanghao" placeholder="账号" clearable  :readonly="ro.zhanghao"></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"100%","margin":"0 0 30px 0","fontSize":"inherit","color":"inherit"}' v-else class="input" label="账号" prop="zhanghao">
					<el-input v-model="ruleForm.zhanghao" placeholder="账号" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"100%","margin":"0 0 30px 0","fontSize":"inherit","color":"inherit"}' class="input" v-if="type!='info'"  label="姓名" prop="xingming">
					<el-input v-model="ruleForm.xingming" placeholder="姓名" clearable  :readonly="ro.xingming"></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"100%","margin":"0 0 30px 0","fontSize":"inherit","color":"inherit"}' v-else class="input" label="姓名" prop="xingming">
					<el-input v-model="ruleForm.xingming" placeholder="姓名" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"100%","margin":"0 0 30px 0","fontSize":"inherit","color":"inherit"}' class="input" v-if="type!='info'"  label="年龄" prop="nianling">
					<el-input v-model="ruleForm.nianling" placeholder="年龄" clearable  :readonly="ro.nianling"></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"100%","margin":"0 0 30px 0","fontSize":"inherit","color":"inherit"}' v-else class="input" label="年龄" prop="nianling">
					<el-input v-model="ruleForm.nianling" placeholder="年龄" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"100%","margin":"0 0 30px 0","fontSize":"inherit","color":"inherit"}' class="input" v-if="type!='info'"  label="手机号码" prop="shoujihaoma">
					<el-input v-model="ruleForm.shoujihaoma" placeholder="手机号码" clearable  :readonly="ro.shoujihaoma"></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"100%","margin":"0 0 30px 0","fontSize":"inherit","color":"inherit"}' v-else class="input" label="手机号码" prop="shoujihaoma">
					<el-input v-model="ruleForm.shoujihaoma" placeholder="手机号码" readonly></el-input>
				</el-form-item>
			</template>
				<el-form-item :style='{"width":"100%","margin":"0 0 30px 0","fontSize":"inherit","color":"inherit"}' class="textarea" v-if="type!='info'" label="病情登记" prop="bingqingdengji">
					<el-input
					  style="min-width: 200px; max-width: 600px;"
					  type="textarea"
					  :rows="8"
					  placeholder="病情登记"
					  v-model="ruleForm.bingqingdengji" >
					</el-input>
				</el-form-item>
				<el-form-item :style='{"width":"100%","margin":"0 0 30px 0","fontSize":"inherit","color":"inherit"}' v-else-if="ruleForm.bingqingdengji" label="病情登记" prop="bingqingdengji">
					<span :style='{"fontSize":"14px","lineHeight":"40px","color":"inherit","background":"none","fontWeight":"500","display":"inline-block"}'>{{ruleForm.bingqingdengji}}</span>
				</el-form-item>
			<el-form-item :style='{"padding":"0","margin":"30px 0","alignItems":"center","textAlign":"center","display":"flex","width":"100%","perspective":"320px","-webkitPerspective":"320px","fontSize":"48px","justifyContent":"flex-start"}' class="btn">
				<el-button class="btn3"  v-if="type!='info'" type="success" @click="onSubmit">
					<span class="icon iconfont icon-tijiao16" :style='{"margin":"0 2px","fontSize":"18px","color":"inherit","display":"none"}'></span>
					确定
				</el-button>
				<el-button class="btn4" v-if="type!='info'" type="success" @click="back()">
					<span class="icon iconfont icon-quxiao09" :style='{"margin":"0 2px","fontSize":"18px","color":"inherit","display":"none"}'></span>
					撤销
				</el-button>
				<el-button class="btn5" v-if="type=='info'" type="success" @click="back()">
					<span class="icon iconfont icon-fanhui01" :style='{"margin":"0 2px","fontSize":"18px","color":"inherit","display":"none"}'></span>
					返回
				</el-button>
			</el-form-item>
		</el-form>
    

  </div>
</template>
<script>
// 数字，邮件，手机，url，身份证校验
import { isNumber,isIntNumer,isEmail,isPhone, isMobile,isURL,checkIdCard } from "@/utils/validate";
export default {
	data() {
		let self = this
		var validateIdCard = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!checkIdCard(value)) {
				callback(new Error("请输入正确的身份证号码"));
			} else {
				callback();
			}
		};
		var validateUrl = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!isURL(value)) {
				callback(new Error("请输入正确的URL地址"));
			} else {
				callback();
			}
		};
		var validateMobile = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!isMobile(value)) {
				callback(new Error("请输入正确的手机号码"));
			} else {
				callback();
			}
		};
		var validatePhone = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!isPhone(value)) {
				callback(new Error("请输入正确的电话号码"));
			} else {
				callback();
			}
		};
		var validateEmail = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!isEmail(value)) {
				callback(new Error("请输入正确的邮箱地址"));
			} else {
				callback();
			}
		};
		var validateNumber = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!isNumber(value)) {
				callback(new Error("请输入数字"));
			} else {
				callback();
			}
		};
		var validateIntNumber = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!isIntNumer(value)) {
				callback(new Error("请输入整数"));
			} else {
				callback();
			}
		};
		return {
			id: '',
			type: '',
			
			
			ro:{
				yishenggonghao : false,
				yishengxingming : false,
				zhiwei : false,
				keshimingcheng : false,
				jiuzhenshijian : false,
				zhenduanshijian : false,
				shousuoya : false,
				shuzhangya : false,
				tiwen : false,
				binglitupian : false,
				bingqingdengji : false,
				zhenduanbaogao : false,
				zhenduanjieguo : false,
				zhanghao : false,
				xingming : false,
				nianling : false,
				shoujihaoma : false,
			},
			
			
			ruleForm: {
				yishenggonghao: '',
				yishengxingming: '',
				zhiwei: '',
				keshimingcheng: '',
				jiuzhenshijian: '',
				zhenduanshijian: '',
				shousuoya: '',
				shuzhangya: '',
				tiwen: '',
				binglitupian: '',
				bingqingdengji: '',
				zhenduanbaogao: '',
				zhenduanjieguo: '',
				zhanghao: '',
				xingming: '',
				nianling: '',
				shoujihaoma: '',
			},
		

			
			rules: {
				yishenggonghao: [
				],
				yishengxingming: [
				],
				zhiwei: [
				],
				keshimingcheng: [
				],
				jiuzhenshijian: [
				],
				zhenduanshijian: [
				],
				shousuoya: [
					{ required: true, message: '收缩压mmHg不能为空', trigger: 'blur' },
					{ validator: validateNumber, trigger: 'blur' },
				],
				shuzhangya: [
					{ required: true, message: '舒张压mmHg不能为空', trigger: 'blur' },
					{ validator: validateNumber, trigger: 'blur' },
				],
				tiwen: [
					{ required: true, message: '体温/°不能为空', trigger: 'blur' },
					{ validator: validateNumber, trigger: 'blur' },
				],
				binglitupian: [
				],
				bingqingdengji: [
				],
				zhenduanbaogao: [
				],
				zhenduanjieguo: [
				],
				zhanghao: [
				],
				xingming: [
				],
				nianling: [
				],
				shoujihaoma: [
				],
			}
		};
	},
	props: ["parent"],
	computed: {



	},
    components: {
    },
	created() {
	},
	methods: {
		
		// 下载
		download(file){
			window.open(`${file}`)
		},
		// 初始化
		init(id,type) {
			if (id) {
				this.id = id;
				this.type = type;
			}
			if(this.type=='info'||this.type=='else'){
				this.info(id);
			}else if(this.type=='logistics'){
				this.logistics=false;
				this.info(id);
			}else if(this.type=='cross'){
				var obj = this.$storage.getObj('crossObj');
				for (var o in obj){
						if(o=='yishenggonghao'){
							this.ruleForm.yishenggonghao = obj[o];
							this.ro.yishenggonghao = true;
							continue;
						}
						if(o=='yishengxingming'){
							this.ruleForm.yishengxingming = obj[o];
							this.ro.yishengxingming = true;
							continue;
						}
						if(o=='zhiwei'){
							this.ruleForm.zhiwei = obj[o];
							this.ro.zhiwei = true;
							continue;
						}
						if(o=='keshimingcheng'){
							this.ruleForm.keshimingcheng = obj[o];
							this.ro.keshimingcheng = true;
							continue;
						}
						if(o=='jiuzhenshijian'){
							this.ruleForm.jiuzhenshijian = obj[o];
							this.ro.jiuzhenshijian = true;
							continue;
						}
						if(o=='zhenduanshijian'){
							this.ruleForm.zhenduanshijian = obj[o];
							this.ro.zhenduanshijian = true;
							continue;
						}
						if(o=='shousuoya'){
							this.ruleForm.shousuoya = obj[o];
							this.ro.shousuoya = true;
							continue;
						}
						if(o=='shuzhangya'){
							this.ruleForm.shuzhangya = obj[o];
							this.ro.shuzhangya = true;
							continue;
						}
						if(o=='tiwen'){
							this.ruleForm.tiwen = obj[o];
							this.ro.tiwen = true;
							continue;
						}
						if(o=='binglitupian'){
							this.ruleForm.binglitupian = obj[o];
							this.ro.binglitupian = true;
							continue;
						}
						if(o=='bingqingdengji'){
							this.ruleForm.bingqingdengji = obj[o];
							this.ro.bingqingdengji = true;
							continue;
						}
						if(o=='zhenduanbaogao'){
							this.ruleForm.zhenduanbaogao = obj[o];
							this.ro.zhenduanbaogao = true;
							continue;
						}
						if(o=='zhenduanjieguo'){
							this.ruleForm.zhenduanjieguo = obj[o];
							this.ro.zhenduanjieguo = true;
							continue;
						}
						if(o=='zhanghao'){
							this.ruleForm.zhanghao = obj[o];
							this.ro.zhanghao = true;
							continue;
						}
						if(o=='xingming'){
							this.ruleForm.xingming = obj[o];
							this.ro.xingming = true;
							continue;
						}
						if(o=='nianling'){
							this.ruleForm.nianling = obj[o];
							this.ro.nianling = true;
							continue;
						}
						if(o=='shoujihaoma'){
							this.ruleForm.shoujihaoma = obj[o];
							this.ro.shoujihaoma = true;
							continue;
						}
				}
			}
			// 获取用户信息
			this.$http({
				url: `${this.$storage.get('sessionTable')}/session`,
				method: "get"
			}).then(({ data }) => {
				if (data && data.code === 0) {
					var json = data.data;
				} else {
					this.$message.error(data.msg);
				}
			});
			
		},
    // 多级联动参数

    info(id) {
      this.$http({
        url: `zhenduanbingli/info/${id}`,
        method: "get"
      }).then(({ data }) => {
        if (data && data.code === 0) {
        this.ruleForm = data.data;
        //解决前台上传图片后台不显示的问题
        let reg=new RegExp('../../../upload','g')//g代表全部
        } else {
          this.$message.error(data.msg);
        }
      });
    },


    // 提交
    onSubmit() {
	if(this.ruleForm.binglitupian!=null) {
		this.ruleForm.binglitupian = this.ruleForm.binglitupian.replace(new RegExp(this.$base.url,"g"),"");
	}
	if(this.ruleForm.zhenduanbaogao!=null) {
		this.ruleForm.zhenduanbaogao = this.ruleForm.zhenduanbaogao.replace(new RegExp(this.$base.url,"g"),"");
	}
var objcross = this.$storage.getObj('crossObj');
      //更新跨表属性
       var crossuserid;
       var crossrefid;
       var crossoptnum;
       if(this.type=='cross'){
                var statusColumnName = this.$storage.get('statusColumnName');
                var statusColumnValue = this.$storage.get('statusColumnValue');
                if(statusColumnName!='') {
                        var obj = this.$storage.getObj('crossObj');
                       if(statusColumnName && !statusColumnName.startsWith("[")) {
                               for (var o in obj){
                                 if(o==statusColumnName){
                                   obj[o] = statusColumnValue;
                                 }
                               }
                               var table = this.$storage.get('crossTable');
                             this.$http({
                                 url: `${table}/update`,
                                 method: "post",
                                 data: obj
                               }).then(({ data }) => {});
                       } else {
                               crossuserid=this.$storage.get('userid');
                               crossrefid=obj['id'];
                               crossoptnum=this.$storage.get('statusColumnName');
                               crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
                        }
                }
        }
		this.$refs["ruleForm"].validate(valid => {
			if (valid) {
				if(crossrefid && crossuserid) {
					this.ruleForm.crossuserid = crossuserid;
					this.ruleForm.crossrefid = crossrefid;
					let params = { 
						page: 1, 
						limit: 10, 
						crossuserid:this.ruleForm.crossuserid,
						crossrefid:this.ruleForm.crossrefid,
					} 
				this.$http({ 
					url: "zhenduanbingli/page", 
					method: "get", 
					params: params 
				}).then(({ 
					data 
				}) => { 
					if (data && data.code === 0) { 
						if(data.data.total>=crossoptnum) {
							this.$message.error(this.$storage.get('tips'));
							return false;
						} else {
							this.$http({
								url: `zhenduanbingli/${!this.ruleForm.id ? "save" : "update"}`,
								method: "post",
								data: this.ruleForm
							}).then(({ data }) => {
								if (data && data.code === 0) {
									this.$message({
										message: "操作成功",
										type: "success",
										duration: 1500,
										onClose: () => {
											this.parent.showFlag = true;
											this.parent.addOrUpdateFlag = false;
											this.parent.zhenduanbingliCrossAddOrUpdateFlag = false;
											this.parent.search();
											this.parent.contentStyleChange();
										}
									});
								} else {
									this.$message.error(data.msg);
								}
							});

						}
					} else { 
				} 
			});
		} else {
			this.$http({
				url: `zhenduanbingli/${!this.ruleForm.id ? "save" : "update"}`,
				method: "post",
			   data: this.ruleForm
			}).then(({ data }) => {
				if (data && data.code === 0) {
					this.$message({
						message: "操作成功",
						type: "success",
						duration: 1500,
						onClose: () => {
							this.parent.showFlag = true;
							this.parent.addOrUpdateFlag = false;
							this.parent.zhenduanbingliCrossAddOrUpdateFlag = false;
							this.parent.search();
							this.parent.contentStyleChange();
						}
					});
				} else {
					this.$message.error(data.msg);
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
      this.parent.showFlag = true;
      this.parent.addOrUpdateFlag = false;
      this.parent.zhenduanbingliCrossAddOrUpdateFlag = false;
      this.parent.contentStyleChange();
    },
    binglitupianUploadChange(fileUrls) {
	    this.ruleForm.binglitupian = fileUrls;
    },
    zhenduanbaogaoUploadChange(fileUrls) {
	    this.ruleForm.zhenduanbaogao = fileUrls;
    },
  }
};
</script>
<style lang="scss" scoped>
	.amap-wrapper {
		width: 100%;
		height: 500px;
	}
	
	.search-box {
		position: absolute;
	}
	
	.el-date-editor.el-input {
		width: auto;
	}
	
	.add-update-preview .el-form-item /deep/ .el-form-item__label {
	  	  padding: 0 10px 0 0;
	  	  color: #999;
	  	  font-weight: 500;
	  	  display: inline-block;
	  	  width: 150px;
	  	  font-size: inherit;
	  	  line-height: 40px;
	  	  text-align: right;
	  	}
	
	.add-update-preview .el-form-item /deep/ .el-form-item__content {
	  margin-left: 150px;
	}
	
	.add-update-preview .el-input /deep/ .el-input__inner {
	  	  border: 2px solid #9c9c9c;
	  	  border-radius: 0px;
	  	  padding: 0 12px;
	  	  box-shadow: 0 0 0px rgba(64, 158, 255, .5);
	  	  outline: none;
	  	  color: inherit;
	  	  background: none;
	  	  width: auto;
	  	  font-size: 14px;
	  	  min-width: 500px;
	  	  height: 36px;
	  	}
	.add-update-preview .el-input-number /deep/ .el-input__inner {
		text-align: left;
	  	  border: 2px solid #9c9c9c;
	  	  border-radius: 0px;
	  	  padding: 0 12px;
	  	  box-shadow: 0 0 0px rgba(64, 158, 255, .5);
	  	  outline: none;
	  	  color: inherit;
	  	  background: none;
	  	  width: auto;
	  	  font-size: 14px;
	  	  min-width: 500px;
	  	  height: 36px;
	  	}
	.add-update-preview .el-input-number /deep/ .el-input-number__decrease {
		display: none;
	}
	.add-update-preview .el-input-number /deep/ .el-input-number__increase {
		display: none;
	}
	
	.add-update-preview .el-select /deep/ .el-input__inner {
	  	  border: 2px solid #9c9c9c;
	  	  border-radius: 0px;
	  	  padding: 0 10px;
	  	  box-shadow: 0 0 0px rgba(64, 158, 255, .5);
	  	  outline: none;
	  	  color: inherit;
	  	  background: none;
	  	  width: auto;
	  	  font-size: 14px;
	  	  min-width: 500px;
	  	  height: 36px;
	  	}
	
	.add-update-preview .el-date-editor /deep/ .el-input__inner {
	  	  border: 2px solid #9c9c9c;
	  	  border-radius: 0px;
	  	  padding: 0 10px 0 30px;
	  	  box-shadow: 0 0 0px rgba(64, 158, 255, .5);
	  	  outline: none;
	  	  color: inherit;
	  	  background: none;
	  	  width: auto;
	  	  font-size: 14px;
	  	  min-width: 500px;
	  	  height: 36px;
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
	  	  border: 2px solid #9c9c9c;
	  	  cursor: pointer;
	  	  border-radius: 0px;
	  	  color: #cbcbcb;
	  	  background: none;
	  	  font-weight: 600;
	  	  object-fit: cover;
	  	  width: 150px;
	  	  font-size: 32px;
	  	  line-height: 80px;
	  	  text-align: center;
	  	  height: 80px;
	  	}
	
	.add-update-preview /deep/ .el-upload-list .el-upload-list__item {
	  	  border: 2px solid #9c9c9c;
	  	  cursor: pointer;
	  	  border-radius: 0px;
	  	  color: #cbcbcb;
	  	  background: none;
	  	  font-weight: 600;
	  	  object-fit: cover;
	  	  width: 150px;
	  	  font-size: 32px;
	  	  line-height: 80px;
	  	  text-align: center;
	  	  height: 80px;
	  	}
	
	.add-update-preview /deep/ .el-upload .el-icon-plus {
	  	  border: 2px solid #9c9c9c;
	  	  cursor: pointer;
	  	  border-radius: 0px;
	  	  color: #cbcbcb;
	  	  background: none;
	  	  font-weight: 600;
	  	  object-fit: cover;
	  	  width: 150px;
	  	  font-size: 32px;
	  	  line-height: 80px;
	  	  text-align: center;
	  	  height: 80px;
	  	}
	
	.add-update-preview .el-textarea /deep/ .el-textarea__inner {
	  	  border: 2px solid #9c9c9c;
	  	  border-radius: 0px;
	  	  padding: 12px;
	  	  box-shadow: 0 0 0px rgba(64, 158, 255, .5);
	  	  outline: none;
	  	  color: inherit;
	  	  background: none;
	  	  width: auto;
	  	  font-size: 14px;
	  	  min-width: 500px;
	  	  height: 120px;
	  	}
	
	.add-update-preview .btn .btn1 {
				border: 0px solid rgba(126, 96, 16, .2);
				cursor: pointer;
				padding: 0 30px;
				margin: 0px 20px 0 0;
				color: #fff;
				display: inline-block;
				font-size: 14px;
				line-height: 24px;
				border-radius: 0px;
				outline: none;
				background: #7c3ef3;
				width: auto;
				height: 40px;
			}
	
	.add-update-preview .btn .btn1:hover {
				transform: scale(1.08);
				opacity: 0.8;
			}
	
	.add-update-preview .btn .btn2 {
				border: 0px solid rgba(126, 96, 16, .2);
				cursor: pointer;
				border-radius: 0px;
				padding: 0 30px;
				margin: 0px 20px 0 0;
				outline: none;
				color: #fff;
				background: #7c3ef3;
				width: auto;
				font-size: 14px;
				line-height: 24px;
				height: 40px;
			}
	
	.add-update-preview .btn .btn2:hover {
				transform: scale(1.08);
				opacity: 0.8;
			}
	
	.add-update-preview .btn .btn3 {
				border: 0px solid rgba(126, 96, 16, .2);
				cursor: pointer;
				border-radius: 0px;
				padding: 0 30px;
				margin: 0px 20px 0 0;
				outline: none;
				color: #fff;
				background: #000;
				width: auto;
				font-size: 16px;
				line-height: 24px;
				height: 40px;
			}
	
	.add-update-preview .btn .btn3:hover {
				transform: scale(1.08);
				opacity: 0.8;
			}
	
	.add-update-preview .btn .btn4 {
				border: 0px solid rgba(126, 96, 16, .2);
				cursor: pointer;
				border-radius: 0px;
				padding: 0 30px;
				margin: 0px 20px 0 0;
				outline: none;
				color: #fff;
				background: #000;
				width: auto;
				font-size: 16px;
				line-height: 24px;
				height: 40px;
			}
	
	.add-update-preview .btn .btn4:hover {
				transform: scale(1.08);
				opacity: 0.8;
			}
	
	.add-update-preview .btn .btn5 {
				border: 0px solid rgba(126, 96, 16, .2);
				cursor: pointer;
				border-radius: 0px;
				padding: 0 30px;
				margin: 0px 20px 0 0;
				outline: none;
				color: #fff;
				background: #000;
				width: auto;
				font-size: 16px;
				line-height: 24px;
				height: 40px;
			}
	
	.add-update-preview .btn .btn5:hover {
				transform: scale(1.08);
				opacity: 0.8;
			}
</style>
