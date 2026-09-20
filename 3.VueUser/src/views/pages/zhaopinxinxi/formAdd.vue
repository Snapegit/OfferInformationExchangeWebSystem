
<template>
	<div class="app-contain" :style='{"minHeight":"100vh","padding":"0","margin":"20px auto 60px","borderRadius":"20px","background":"#fff","width":"64%","position":"relative","height":"100%"}'>
		<div class="bread_view">
			<el-breadcrumb separator="/" class="breadcrumb">
				<el-breadcrumb-item class="first_breadcrumb" :to="{ path: '/' }">首页</el-breadcrumb-item>
				<el-breadcrumb-item class="second_breadcrumb" v-for="(item,index) in breadList" :key="index">{{item.name}}</el-breadcrumb-item>
			</el-breadcrumb>
		</div>
		<el-form ref="formRef" :model="form" class="add_form" label-width="120px" :rules="rules">
			<el-row>
				<el-col :span="12">
					<el-form-item label="公司名称" prop="gongsimingcheng">
						<el-input class="list_inp" v-model="form.gongsimingcheng" placeholder="公司名称"
							 type="text" 							:readonly="!isAdd||disabledForm.gongsimingcheng?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="12">
					<el-form-item label="封面" prop="fengmian">
						<uploads
							:disabled="!isAdd||disabledForm.fengmian?true:false"
							action="file/upload" 
							tip="请上传封面" 
							:limit="3" 
							style="width: 100%;text-align: left;"
							:fileUrls="form.fengmian?form.fengmian:''" 
							@change="fengmianUploadSuccess">
						</uploads>
					</el-form-item>
				</el-col>
				<el-col :span="12">
					<el-form-item label="工作岗位" prop="gongzuogangwei">
						<el-input class="list_inp" v-model="form.gongzuogangwei" placeholder="工作岗位"
							 type="text" 							:readonly="!isAdd||disabledForm.gongzuogangwei?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="12">
					<el-form-item label="行业类型" prop="xingyeleixing">
						<el-select
							class="list_sel"
							:disabled="!isAdd||disabledForm.xingyeleixing?true:false"
							v-model="form.xingyeleixing" 
							placeholder="请选择行业类型"
							style="width:100%;"
							>
							<el-option v-for="(item,index) in xingyeleixingLists" :label="item"
								:value="item"
								>
							</el-option>
						</el-select>
					</el-form-item>
				</el-col>
				<el-col :span="12">
					<el-form-item label="工作城市" prop="gongzuochengshi">
						<el-input class="list_inp" v-model="form.gongzuochengshi" placeholder="工作城市"
							 type="text" 							:readonly="!isAdd||disabledForm.gongzuochengshi?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="12">
					<el-form-item label="招聘批次" prop="zhaopinpici">
						<el-select
							class="list_sel"
							:disabled="!isAdd||disabledForm.zhaopinpici?true:false"
							v-model="form.zhaopinpici" 
							placeholder="请选择招聘批次"
							style="width:100%;"
							>
							<el-option v-for="(item,index) in zhaopinpiciLists" :label="item"
								:value="item"
								>
							</el-option>
						</el-select>
					</el-form-item>
				</el-col>
				<el-col :span="12">
					<el-form-item label="招聘时间" prop="zhaopinshijian">
						<el-date-picker
							class="list_date"
							v-model="form.zhaopinshijian"
							format="YYYY 年 MM 月 DD 日"
							value-format="YYYY-MM-DD"
							type="datetime"
							:readonly="!isAdd||disabledForm.zhaopinshijian?true:false"
							placeholder="请选择招聘时间"
							style="width: 100%;" />
					</el-form-item>
				</el-col>
				<el-col :span="12">
					<el-form-item label="招聘届数" prop="zhaopinjieshu">
						<el-input class="list_inp" v-model="form.zhaopinjieshu" placeholder="招聘届数"
							 type="text" 							:readonly="!isAdd||disabledForm.zhaopinjieshu?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="12">
					<el-form-item label="学历要求" prop="xueliyaoqiu">
						<el-input class="list_inp" v-model="form.xueliyaoqiu" placeholder="学历要求"
							 type="text" 							:readonly="!isAdd||disabledForm.xueliyaoqiu?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="12">
					<el-form-item label="专业要求" prop="zhuanyeyaoqiu">
						<el-input class="list_inp" v-model="form.zhuanyeyaoqiu" placeholder="专业要求"
							 type="text" 							:readonly="!isAdd||disabledForm.zhuanyeyaoqiu?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="12">
					<el-form-item label="联系方式" prop="lianxifangshi">
						<el-input class="list_inp" v-model="form.lianxifangshi" placeholder="联系方式"
							 type="text" 							:readonly="!isAdd||disabledForm.lianxifangshi?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="24">
					<el-form-item label="岗位要求" prop="gangweiyaoqiu">
						<el-input v-model="form.gangweiyaoqiu" placeholder="岗位要求" type="textarea"
						:readonly="!isAdd||disabledForm.gangweiyaoqiu?true:false"
						/>
					</el-form-item>
				</el-col>
			</el-row>
			<div class="formModel_btn_box">
				<el-button class="formModel_cancel" @click="backClick">取消</el-button>
				<el-button class="formModel_confirm" @click="save"
					type="success"
					>
					保存
				</el-button>
			</div>
		</el-form>
	</div>
</template>
<script setup>
	import {
		ref,
		getCurrentInstance,
		watch,
		onUnmounted,
		onMounted,
		nextTick,
		computed
	} from 'vue';
	import {
		useRoute,
		useRouter
	} from 'vue-router';
	const context = getCurrentInstance()?.appContext.config.globalProperties;
	const route = useRoute()
	const router = useRouter()
	//基础信息
	const tableName = 'zhaopinxinxi'
	const formName = '招聘信息'
	//基础信息
	const breadList = ref([{
		name: formName
	}])
	//获取唯一标识
	const getUUID =()=> {
      return new Date().getTime();
    }
	//form表单
	const form = ref({
		gongsimingcheng: '',
		fengmian: '',
		gongzuogangwei: '',
		xingyeleixing: '',
		gongzuochengshi: '',
		zhaopinpici: '',
		zhaopinshijian: '',
		zhaopinjieshu: '',
		xueliyaoqiu: '',
		zhuanyeyaoqiu: '',
		gangweiyaoqiu: '',
		lianxifangshi: '',
		thumbsupnum: '0',
		crazilynum: '0',
		storeupnum: '0',
	})
	const formRef = ref(null)
	const id = ref(0)
	const type = ref('')
	const disabledForm = ref({
		gongsimingcheng : false,
		fengmian : false,
		gongzuogangwei : false,
		xingyeleixing : false,
		gongzuochengshi : false,
		zhaopinpici : false,
		zhaopinshijian : false,
		zhaopinjieshu : false,
		xueliyaoqiu : false,
		zhuanyeyaoqiu : false,
		gangweiyaoqiu : false,
		lianxifangshi : false,
		thumbsupnum : false,
		crazilynum : false,
		storeupnum : false,
	})
	const isAdd = ref(false)
	//表单验证
	//匹配整数
	const validateIntNumber = (rule, value, callback) => {
		if (!value) {
			callback();
		} else if (!context?.$toolUtil.isIntNumer(value)) {
			callback(new Error("请输入整数"));
		} else {
			callback();
		}
	}
	//匹配数字
	const validateNumber = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isNumber(value)) {
			callback(new Error("请输入数字"));
		} else {
			callback();
		}
	}
	//匹配手机号码
	const validateMobile = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isMobile(value)) {
			callback(new Error("请输入正确的手机号码"));
		} else {
			callback();
		}
	}
	//匹配电话号码
	const validatePhone = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isPhone(value)) {
			callback(new Error("请输入正确的电话号码"));
		} else {
			callback();
		}
	}
	//匹配邮箱
	const validateEmail = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isEmail(value)) {
			callback(new Error("请输入正确的邮箱地址"));
		} else {
			callback();
		}
	}
	//匹配身份证
	const validateIdCard = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.checkIdCard(value)) {
			callback(new Error("请输入正确的身份证号码"));
		} else {
			callback();
		}
	}
	//匹配网站地址
	const validateUrl = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isURL(value)) {
			callback(new Error("请输入正确的URL地址"));
		} else {
			callback();
		}
	}
	const rules = ref({
		gongsimingcheng: [
		],
		fengmian: [
		],
		gongzuogangwei: [
		],
		xingyeleixing: [
		],
		gongzuochengshi: [
		],
		zhaopinpici: [
		],
		zhaopinshijian: [
		],
		zhaopinjieshu: [
		],
		xueliyaoqiu: [
		],
		zhuanyeyaoqiu: [
		],
		gangweiyaoqiu: [
		],
		lianxifangshi: [
			{ validator: validateMobile, trigger: 'blur' },
		],
		thumbsupnum: [
			{ validator: validateIntNumber, trigger: 'blur' },
		],
		crazilynum: [
			{ validator: validateIntNumber, trigger: 'blur' },
		],
		storeupnum: [
			{ validator: validateIntNumber, trigger: 'blur' },
		],
	})
	//封面上传回调
	const fengmianUploadSuccess=(e)=>{
		form.value.fengmian = e
	}
	//行业类型列表
	const xingyeleixingLists = ref([])
	//招聘批次列表
	const zhaopinpiciLists = ref([])
	//methods

	//methods
	//获取info
	const getInfo = ()=>{
		context?.$http({
			url: `${tableName}/info/${id.value}`,
			method: 'get'
		}).then(res => {
			let reg=new RegExp('../../../file','g')
			form.value = res.data.data
		})
	}
	const crossRow = ref('')
	const crossTable = ref('')
	const crossTips = ref('')
	const crossColumnName = ref('')
	const crossColumnValue = ref('')
	//初始化
	const init = (formId=null,formType='add',formNames='',row=null,table=null,statusColumnName=null,tips=null,statusColumnValue=null) => {
		if(formId){
			id.value = formId
			type.value = formType
		}
		if(formType == 'add'){
			isAdd.value = true
		}else if(formType == 'info'){
			isAdd.value = false
			getInfo()
		}else if(formType == 'edit'){
			isAdd.value = true
			getInfo()
		}
		else if(formType == 'cross'){
			isAdd.value = true
			// getInfo()
			for(let x in row){
				if(x=='gongsimingcheng'){
					form.value.gongsimingcheng = row[x];
					disabledForm.value.gongsimingcheng = true;
					continue;
				}
				if(x=='fengmian'){
					form.value.fengmian = row[x];
					disabledForm.value.fengmian = true;
					continue;
				}
				if(x=='gongzuogangwei'){
					form.value.gongzuogangwei = row[x];
					disabledForm.value.gongzuogangwei = true;
					continue;
				}
				if(x=='xingyeleixing'){
					form.value.xingyeleixing = row[x];
					disabledForm.value.xingyeleixing = true;
					continue;
				}
				if(x=='gongzuochengshi'){
					form.value.gongzuochengshi = row[x];
					disabledForm.value.gongzuochengshi = true;
					continue;
				}
				if(x=='zhaopinpici'){
					form.value.zhaopinpici = row[x];
					disabledForm.value.zhaopinpici = true;
					continue;
				}
				if(x=='zhaopinshijian'){
					form.value.zhaopinshijian = row[x];
					disabledForm.value.zhaopinshijian = true;
					continue;
				}
				if(x=='zhaopinjieshu'){
					form.value.zhaopinjieshu = row[x];
					disabledForm.value.zhaopinjieshu = true;
					continue;
				}
				if(x=='xueliyaoqiu'){
					form.value.xueliyaoqiu = row[x];
					disabledForm.value.xueliyaoqiu = true;
					continue;
				}
				if(x=='zhuanyeyaoqiu'){
					form.value.zhuanyeyaoqiu = row[x];
					disabledForm.value.zhuanyeyaoqiu = true;
					continue;
				}
				if(x=='gangweiyaoqiu'){
					form.value.gangweiyaoqiu = row[x];
					disabledForm.value.gangweiyaoqiu = true;
					continue;
				}
				if(x=='lianxifangshi'){
					form.value.lianxifangshi = row[x];
					disabledForm.value.lianxifangshi = true;
					continue;
				}
				if(x=='thumbsupnum'){
					form.value.thumbsupnum = row[x];
					disabledForm.value.thumbsupnum = true;
					continue;
				}
				if(x=='crazilynum'){
					form.value.crazilynum = row[x];
					disabledForm.value.crazilynum = true;
					continue;
				}
				if(x=='storeupnum'){
					form.value.storeupnum = row[x];
					disabledForm.value.storeupnum = true;
					continue;
				}
			}
			if(row){
				crossRow.value = row
			}
			if(table){
				crossTable.value = table
			}
			if(tips){
				crossTips.value = tips
			}
			if(statusColumnName){
				crossColumnName.value = statusColumnName
			}
			if(statusColumnValue){
				crossColumnValue.value = statusColumnValue
			}
			form.value.thumbsupnum='0'
			form.value.crazilynum='0'
			form.value.storeupnum='0'
		}
		context?.$http({
			url: `${context?.$toolUtil.storageGet('frontSessionTable')}/session`,
			method: 'get'
		}).then(res => {
			var json = res.data.data
		})
		context?.$http({
			url: `option/xingyeleixing/xingyeleixing`,
			method: 'get'
		}).then(res=>{
			xingyeleixingLists.value = res.data.data
		})
		context?.$http({
			url: `option/zhaopinpici/zhaopinpici`,
			method: 'get'
		}).then(res=>{
			zhaopinpiciLists.value = res.data.data
		})
	}
	//初始化
	//取消
	const backClick = () => {
		history.back()
	}
	//提交
	const save=()=>{
		if(form.value.fengmian!=null) {
			form.value.fengmian = form.value.fengmian.replace(new RegExp(context?.$config.url,"g"),"");
		}
		var table = crossTable.value
		var objcross = JSON.parse(JSON.stringify(crossRow.value))
		let crossUserId = ''
		let crossRefId = ''
		let crossOptNum = ''
		if(type.value == 'cross'){
			if(crossColumnName.value!=''){
				if(!crossColumnName.value.startsWith('[')){
					for(let o in objcross){
						if(o == crossColumnName.value){
							objcross[o] = crossColumnValue.value
						}
					}
					//修改跨表数据
					changeCrossData(objcross)
				}else{
					crossUserId = context?.$toolUtil.storageGet('userid')
					crossRefId = objcross['id']
					crossOptNum = crossColumnName.value.replace(/\[/,"").replace(/\]/,"")
				}
			}
		}
		formRef.value.validate((valid)=>{
			if(valid){
				if(crossUserId&&crossRefId){
					form.value.crossuserid = crossUserId
					form.value.crossrefid = crossRefId
					let params = {
						page: 1,
						limit: 1000, 
						crossuserid:form.value.crossuserid,
						crossrefid:form.value.crossrefid,
					}
					context?.$http({
						url: `${tableName}/page`,
						method: 'get', 
						params: params 
					}).then(res=>{
						if(res.data.data.total>=crossOptNum){
							context?.$toolUtil.message(`${crossTips.value}`,'error')
							return false
						}else{
							context?.$http({
								url: `${tableName}/${!form.value.id ? "save" : "update"}`,
								method: 'post', 
								data: form.value 
							}).then(res=>{
								context?.$toolUtil.message(`操作成功`,'success',()=>{
									history.back()
								})
							})
						}
					})
				}else{
					context?.$http({
						url: `${tableName}/${!form.value.id ? "save" : "update"}`,
						method: 'post', 
						data: form.value 
					}).then(res=>{
						context?.$toolUtil.message(`操作成功`,'success',()=>{
							history.back()
						})
					})
				}
			}
		})
	}
	//修改跨表数据
	const changeCrossData=(row)=>{
		context?.$http({
			url: `${crossTable.value}/update`,
			method: 'post',
			data: row
		}).then(res=>{})
	}
	onMounted(()=>{
		type.value = route.query.type?route.query.type:'add'
		let row = null
		let table = null
		let statusColumnName = null
		let tips = null
		let statusColumnValue = null
		if(type.value == 'cross'){
			row = context?.$toolUtil.storageGet('crossObj')?JSON.parse(context?.$toolUtil.storageGet('crossObj')):{}
			table = context?.$toolUtil.storageGet('crossTable')
			statusColumnName = context?.$toolUtil.storageGet('crossStatusColumnName')
			tips = context?.$toolUtil.storageGet('crossTips')
			statusColumnValue = context?.$toolUtil.storageGet('crossStatusColumnValue')
		}
		init(route.query.id?route.query.id:null, type.value,'', row, table, statusColumnName, tips, statusColumnValue)
	})
	
</script>
<style lang="scss" scoped>
	// 面包屑盒子
	.bread_view {
		border-radius: 0px;
		padding: 10px 20px;
		margin: 0px auto;
		background: none;
		width: 100%;
		border-color: #eee;
		border-width: 0 0 1px;
		position: relative;
		border-style: solid;
		:deep(.breadcrumb) {
			font-size: 14px;
			line-height: 1;
			.el-breadcrumb__separator {
				margin: 0 9px;
				color: #999;
				font-weight: 500;
			}
			.first_breadcrumb {
				.el-breadcrumb__inner {
					color: #999;
					display: inline-block;
				}
			}
			.second_breadcrumb {
				.el-breadcrumb__inner {
					color: #999;
					display: inline-block;
				}
			}
		}
	}
	// 表单
	.add_form{
		border: 1px solid #27bacc30;
		border-radius: 0px;
		padding: 30px 7%;
		background: linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(242,254,255,1) 100%);
		// form item
		:deep(.el-form-item) {
			border: 0px solid #eee;
			padding: 6px 0;
			margin: 0 0 20px 0;
			background: none;
			display: flex;
			//label
			.el-form-item__label {
			 background: none;
			 display: block;
			 width: auto;
			 min-width: 150px;
			 text-align: right;
			}
			// 内容盒子
			.el-form-item__content {
				display: flex;
				width: calc(100% - 150px);
				justify-content: flex-start;
				align-items: center;
				flex-wrap: wrap;
				// 输入框
				.list_inp {
					padding: 0 10px;
					background: none;
					width: auto;
					border-color: #ddd;
					border-width: 0 0 1px;
					line-height: 36px;
					box-sizing: border-box;
					border-style: solid;
					min-width: 350px;
					height: 36px;
					//去掉默认样式
					.el-input__wrapper{
						border: none;
						box-shadow: none;
						background: none;
						border-radius: 0;
						height: 100%;
						padding: 0;
					}
					.is-focus {
						box-shadow: none !important;
					}
				}
				//日期选择器
				.list_date {
					border-radius: 0px;
					background: none;
					width: auto;
					border-color: #ddd;
					border-width: 0 0 1px;
					line-height: 36px;
					box-sizing: border-box;
					border-style: solid;
					min-width: 300px;
					//去掉默认样式
					.el-input__wrapper{
						border: none;
						box-shadow: none;
						background: none;
						border-radius: 0;
						height: 100%;
					}
				}
				// 下拉框
				.list_sel {
					border-radius: 0px;
					padding: 0 10px;
					background: none;
					width: auto;
					border-color: #ddd;
					border-width: 0 0 1px;
					line-height: 36px;
					box-sizing: border-box;
					border-style: solid;
					min-width: 300px;
					//去掉默认样式
					.select-trigger{
						height: 100%;
						.el-input{
							height: 100%;
							.el-input__wrapper{
								border: none;
								box-shadow: none;
								background: none;
								border-radius: 0;
								height: 100%;
								padding: 0;
							}
							.is-focus {
								box-shadow: none !important;
							}
						}
					}
				}
				// 长文本
				.el-textarea__inner {
					border: 1px solid #ddd;
					border-radius: 8px;
					padding: 12px;
					color: #666;
					background: none;
					width: 100%;
					font-size: 14px;
					min-height: 120px;
				}
				//图片上传样式
				.el-upload-list  {
					//提示语
					.el-upload__tip {
						margin: 7px 0 0;
						color: #999;
						display: flex;
						font-size: 14px;
						justify-content: flex-start;
						align-items: center;
					}
					//外部盒子
					.el-upload--picture-card {
						border: 1px solid #ddd;
						cursor: pointer;
						border-radius: 8px;
						background: none;
						width: 150px;
						line-height: 90px;
						text-align: center;
						height: 80px;
						//图标
						.el-icon{
							color: #999;
							font-size: 24px;
						}
					}
					.el-upload-list__item {
						border: 1px solid #ddd;
						cursor: pointer;
						border-radius: 8px;
						background: none;
						width: 150px;
						line-height: 90px;
						text-align: center;
						height: 80px;
					}
				}
			}
		}
	}
	// 按钮盒子
	.formModel_btn_box {
		padding: 0 150px;
		display: flex;
		width: 100%;
		justify-content: center;
		align-items: center;
		.formModel_cancel {
			border: 1px solid #27bacc;
			cursor: pointer;
			border-radius: 8px;
			padding: 0 40px;
			margin: 0 20px 0 0;
			outline: none;
			color: #27bacc;
			background: none;
			width: auto;
			font-size: 14px;
			line-height: 40px;
			height: 40px;
		}
		.formModel_cancel:hover {
		}
		
		.formModel_confirm {
			border: 0;
			cursor: pointer;
			border-radius: 8px;
			padding: 0 40px;
			margin: 0 20px 0 0;
			outline: none;
			color: #fff;
			background: #27bacc;
			width: auto;
			font-size: 14px;
			line-height: 40px;
			height: 40px;
		}
		.formModel_confirm:hover {
		}
	}
</style>