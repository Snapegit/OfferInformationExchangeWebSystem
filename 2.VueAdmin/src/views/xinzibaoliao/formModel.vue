<template>
	<div>
		<el-dialog v-model="formVisible" :title="formTitle" width="80%" destroy-on-close :fullscreen='false'>
			<el-form class="formModel_form" ref="formRef" :model="form" label-width="$template2.back.add.form.base.labelWidth" :rules="rules">
				<el-row>
					<el-col :span="24">
						<el-form-item label="爆料公司名称" prop="baoliaogongsimingcheng">
							<el-select
								class="list_sel"
								:disabled="!isAdd||disabledForm.baoliaogongsimingcheng?true:false"
								v-model="form.baoliaogongsimingcheng" 
								placeholder="请选择爆料公司名称"
								@change="baoliaogongsimingchengChange">
								<el-option v-for="(item,index) in baoliaogongsimingchengLists" :label="item" :value="item">
								</el-option>
							</el-select>
						</el-form-item>
					</el-col>
					<el-col :span="24">
						<el-form-item label="公司账号" prop="zhanghao">
							<el-input class="list_inp" v-model="form.zhanghao" placeholder="公司账号"
								 type="text" 								:readonly="!isAdd||disabledForm.zhanghao?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="公司负责人" prop="xingming">
							<el-input class="list_inp" v-model="form.xingming" placeholder="公司负责人"
								 type="text" 								:readonly="!isAdd||disabledForm.xingming?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="图片" prop="tupian">
							<uploads
								:disabled="!isAdd||disabledForm.tupian?true:false"
								action="file/upload" 
								tip="请上传图片" 
								:limit="3" 
								style="width: 100%;text-align: left;"
								:fileUrls="form.tupian?form.tupian:''" 
								@change="tupianUploadSuccess">
							</uploads>
						</el-form-item>
					</el-col>
					<el-col :span="24">
						<el-form-item label="公司岗位" prop="gongsigangwei">
							<el-input class="list_inp" v-model="form.gongsigangwei" placeholder="公司岗位"
								 type="text" 								:readonly="!isAdd||disabledForm.gongsigangwei?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="行业类型" prop="xingyeleixing">
							<el-select
								class="list_sel"
								:disabled="!isAdd||disabledForm.xingyeleixing?true:false"
								v-model="form.xingyeleixing" 
								placeholder="请选择行业类型"
								>
								<el-option v-for="(item,index) in xingyeleixingLists" :label="item"
									:value="item"
									>
								</el-option>
							</el-select>
						</el-form-item>
					</el-col>
					<el-col :span="24">
						<el-form-item label="所在城市" prop="suozaichengshi">
							<el-input class="list_inp" v-model="form.suozaichengshi" placeholder="所在城市"
								 type="text" 								:readonly="!isAdd||disabledForm.suozaichengshi?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="薪资构成" prop="xinzigoucheng">
							<el-input class="list_inp" v-model="form.xinzigoucheng" placeholder="薪资构成"
								 type="text" 								:readonly="!isAdd||disabledForm.xinzigoucheng?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="年薪/万" prop="nianxin">
							<el-input class="list_inp" v-model="form.nianxin" placeholder="年薪/万"
								 type="text" 								:readonly="!isAdd||disabledForm.nianxin?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="招聘类别" prop="zhaopinleibie">
							<el-select
								class="list_sel"
								:disabled="!isAdd||disabledForm.zhaopinleibie?true:false"
								v-model="form.zhaopinleibie" 
								placeholder="请选择招聘类别"
								>
								<el-option v-for="(item,index) in zhaopinleibieLists" :label="item"
									:value="item"
									>
								</el-option>
							</el-select>
						</el-form-item>
					</el-col>
					<el-col :span="24">
						<el-form-item label="学历要求" prop="xueliyaoqiu">
							<el-input class="list_inp" v-model="form.xueliyaoqiu" placeholder="学历要求"
								 type="text" 								:readonly="!isAdd||disabledForm.xueliyaoqiu?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="行业" prop="xingye">
							<el-input class="list_inp" v-model="form.xingye" placeholder="行业"
								 type="text" 								:readonly="!isAdd||disabledForm.xingye?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="备注" prop="beizhu">
							<el-input class="list_inp" v-model="form.beizhu" placeholder="备注"
								 type="text" 								:readonly="!isAdd||disabledForm.beizhu?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="用户账号" prop="yonghuzhanghao">
							<el-input class="list_inp" v-model="form.yonghuzhanghao" placeholder="用户账号"
								 type="text" 								:readonly="!isAdd||disabledForm.yonghuzhanghao?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="用户姓名" prop="yonghuxingming">
							<el-input class="list_inp" v-model="form.yonghuxingming" placeholder="用户姓名"
								 type="text" 								:readonly="!isAdd||disabledForm.yonghuxingming?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="爆料详情" prop="baoliaoxiangqing">
							<el-input v-model="form.baoliaoxiangqing" placeholder="爆料详情" type="textarea"
							:readonly="!isAdd||disabledForm.baoliaoxiangqing?true:false"
							/>
						</el-form-item>
					</el-col>
				</el-row>
			</el-form>
			<template #footer v-if="isAdd||type=='logistics'||type=='reply'">
				<span class="formModel_btn_box">
					<el-button class="formModel_cancel" @click="closeClick">取消</el-button>
					<el-button class="formModel_confirm" type="primary" @click="save"
						>
						提交
					</el-button>
				</span>
			</template>
		</el-dialog>
	</div>
</template>
<script setup>
	import {
		reactive,
		ref,
		getCurrentInstance,
		nextTick,
		computed,
		defineEmits
	} from 'vue'
	const context = getCurrentInstance()?.appContext.config.globalProperties;	
	const emit = defineEmits(['formModelChange'])
	//基础信息
	const tableName = 'xinzibaoliao'
	const formName = '薪资爆料'
	//基础信息
	//form表单
	const form = ref({})
	const disabledForm = ref({
		baoliaogongsimingcheng : false,
		zhanghao : false,
		xingming : false,
		tupian : false,
		gongsigangwei : false,
		xingyeleixing : false,
		suozaichengshi : false,
		xinzigoucheng : false,
		nianxin : false,
		zhaopinleibie : false,
		xueliyaoqiu : false,
		xingye : false,
		beizhu : false,
		sfsh : false,
		shhf : false,
		baoliaoxiangqing : false,
		yonghuzhanghao : false,
		yonghuxingming : false,
		storeupnum : false,
		thumbsupnum : false,
		crazilynum : false,
		clicktime : false,
	})
	const formVisible = ref(false)
	const isAdd = ref(false)
	const formTitle = ref('')
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
		baoliaogongsimingcheng: [
		],
		zhanghao: [
		],
		xingming: [
		],
		tupian: [
		],
		gongsigangwei: [
		],
		xingyeleixing: [
		],
		suozaichengshi: [
		],
		xinzigoucheng: [
		],
		nianxin: [
		],
		zhaopinleibie: [
		],
		xueliyaoqiu: [
		],
		xingye: [
		],
		beizhu: [
		],
		sfsh: [
		],
		shhf: [
		],
		baoliaoxiangqing: [
		],
		yonghuzhanghao: [
		],
		yonghuxingming: [
		],
		storeupnum: [
			{ validator: validateIntNumber, trigger: 'blur' },
		],
		thumbsupnum: [
			{ validator: validateIntNumber, trigger: 'blur' },
		],
		crazilynum: [
			{ validator: validateIntNumber, trigger: 'blur' },
		],
		clicktime: [
		],
	})
	//表单验证
	
	const formRef = ref(null)
	const id = ref(0)
	const type = ref('')
	//爆料公司名称列表
	const baoliaogongsimingchengLists = ref([])
	//图片上传回调
	const tupianUploadSuccess=(e)=>{
		form.value.tupian = e
	}
	//行业类型列表
	const xingyeleixingLists = ref([])
	//招聘类别列表
	const zhaopinleibieLists = ref([])
	//methods

	//获取唯一标识
	const getUUID =()=> {
      return new Date().getTime();
    }
	//重置
	const resetForm = () => {
		form.value = {
			baoliaogongsimingcheng: '',
			zhanghao: '',
			xingming: '',
			tupian: '',
			gongsigangwei: '',
			xingyeleixing: '',
			suozaichengshi: '',
			xinzigoucheng: '',
			nianxin: '',
			zhaopinleibie: '',
			xueliyaoqiu: '',
			xingye: '',
			beizhu: '',
			sfsh: '待审核',
			shhf: '',
			baoliaoxiangqing: '',
			yonghuzhanghao: '',
			yonghuxingming: '',
			storeupnum: '0',
			thumbsupnum: '0',
			crazilynum: '0',
			clicktime: '',
		}
	}
	//获取info
	const getInfo = ()=>{
		context?.$http({
			url: `${tableName}/info/${id.value}`,
			method: 'get'
		}).then(res => {
			let reg=new RegExp('../../../file','g')
			form.value = res.data.data
			formVisible.value = true
		})
	}
	const crossRow = ref('')
	const crossTable = ref('')
	const crossTips = ref('')
	const crossColumnName = ref('')
	const crossColumnValue = ref('')
	//初始化
	const init=(formId=null,formType='add',formNames='',row=null,table=null,statusColumnName=null,tips=null,statusColumnValue=null)=>{
		resetForm()
		if(formId){
			id.value = formId
			type.value = formType
		}
		if(formType == 'add'){
			isAdd.value = true
			formTitle.value = '新增' + formName
			formVisible.value = true
		}else if(formType == 'info'){
			isAdd.value = false
			formTitle.value = '查看' + formName
			getInfo()
		}else if(formType == 'edit'){
			isAdd.value = true
			formTitle.value = '修改' + formName
			getInfo()
		}
		else if(formType == 'cross'){
			isAdd.value = true
			formTitle.value = formNames
			// getInfo()
			for(let x in row){
				if(x=='baoliaogongsimingcheng'){
					form.value.baoliaogongsimingcheng = row[x];
					disabledForm.value.baoliaogongsimingcheng = true;
					continue;
				}
				if(x=='zhanghao'){
					form.value.zhanghao = row[x];
					disabledForm.value.zhanghao = true;
					continue;
				}
				if(x=='xingming'){
					form.value.xingming = row[x];
					disabledForm.value.xingming = true;
					continue;
				}
				if(x=='tupian'){
					form.value.tupian = row[x];
					disabledForm.value.tupian = true;
					continue;
				}
				if(x=='gongsigangwei'){
					form.value.gongsigangwei = row[x];
					disabledForm.value.gongsigangwei = true;
					continue;
				}
				if(x=='xingyeleixing'){
					form.value.xingyeleixing = row[x];
					disabledForm.value.xingyeleixing = true;
					continue;
				}
				if(x=='suozaichengshi'){
					form.value.suozaichengshi = row[x];
					disabledForm.value.suozaichengshi = true;
					continue;
				}
				if(x=='xinzigoucheng'){
					form.value.xinzigoucheng = row[x];
					disabledForm.value.xinzigoucheng = true;
					continue;
				}
				if(x=='nianxin'){
					form.value.nianxin = row[x];
					disabledForm.value.nianxin = true;
					continue;
				}
				if(x=='zhaopinleibie'){
					form.value.zhaopinleibie = row[x];
					disabledForm.value.zhaopinleibie = true;
					continue;
				}
				if(x=='xueliyaoqiu'){
					form.value.xueliyaoqiu = row[x];
					disabledForm.value.xueliyaoqiu = true;
					continue;
				}
				if(x=='xingye'){
					form.value.xingye = row[x];
					disabledForm.value.xingye = true;
					continue;
				}
				if(x=='beizhu'){
					form.value.beizhu = row[x];
					disabledForm.value.beizhu = true;
					continue;
				}
				if(x=='baoliaoxiangqing'){
					form.value.baoliaoxiangqing = row[x];
					disabledForm.value.baoliaoxiangqing = true;
					continue;
				}
				if(x=='yonghuzhanghao'){
					form.value.yonghuzhanghao = row[x];
					disabledForm.value.yonghuzhanghao = true;
					continue;
				}
				if(x=='yonghuxingming'){
					form.value.yonghuxingming = row[x];
					disabledForm.value.yonghuxingming = true;
					continue;
				}
				if(x=='storeupnum'){
					form.value.storeupnum = row[x];
					disabledForm.value.storeupnum = true;
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
				if(x=='clicktime'){
					form.value.clicktime = row[x];
					disabledForm.value.clicktime = true;
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
			form.value.sfsh='待审核'
			form.value.storeupnum='0'
			form.value.thumbsupnum='0'
			form.value.crazilynum='0'
			formVisible.value = true
		}

		context?.$http({
			url: `${context?.$toolUtil.storageGet('sessionTable')}/session`,
			method: 'get'
		}).then(res => {
			var json = res.data.data
			if(json.hasOwnProperty('yonghuzhanghao')&& context?.$toolUtil.storageGet("role")!="管理员"){
				form.value.yonghuzhanghao = json.yonghuzhanghao
				disabledForm.value.yonghuzhanghao = true;
			}
			if(json.hasOwnProperty('yonghuxingming')&& context?.$toolUtil.storageGet("role")!="管理员"){
				form.value.yonghuxingming = json.yonghuxingming
				disabledForm.value.yonghuxingming = true;
			}
		})
		context?.$http({
			url: `option/gongzuorenyuan/gongsimingcheng`,
			method: 'get'
		}).then(res=>{
			baoliaogongsimingchengLists.value = res.data.data
		})
		//由上级字段带出不可改
		disabledForm.value.zhanghao = true;
		//由上级字段带出不可改
		disabledForm.value.xingming = true;
		context?.$http({
			url: `option/xingyeleixing/xingyeleixing`,
			method: 'get'
		}).then(res=>{
			xingyeleixingLists.value = res.data.data
		})
		zhaopinleibieLists.value = "实习生,正式工".split(',')
	}
	//初始化
	//声明父级调用
	defineExpose({
		init
	})
	//关闭
	const closeClick = () => {
		formVisible.value = false
	}
	const baoliaogongsimingchengChange=()=>{
		context?.$http({
			url: `follow/gongzuorenyuan/gongsimingcheng?columnValue=` + form.value.baoliaogongsimingcheng,
			method: 'get'
		}).then(res=>{
			if(res.data.data.zhanghao){
				form.value.zhanghao = res.data.data.zhanghao
			}
			if(res.data.data.xingming){
				form.value.xingming = res.data.data.xingming
			}
		})
	}
	//富文本
	const editorChange = (e,name) =>{
		form.value[name] = e
	}
	//提交
	const save=()=>{
		if(form.value.tupian!=null) {
			form.value.tupian = form.value.tupian.replace(new RegExp(context?.$config.url,"g"),"");
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
									formVisible.value = false
									emit('formModelChange')
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
							formVisible.value = false
							emit('formModelChange')
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
</script>
<style lang="scss" scoped>
	// 表单
	.formModel_form{
		border-radius: 6px;
		padding: 30px;
		// form item
		:deep(.el-form-item) {
			margin: 0 0 20px 0;
			display: flex;
			//label
			.el-form-item__label {
			 color: #9E9E9E;
			 display: block;
			 width: 90px;
			 text-align: center;
			}
			// 内容盒子
			.el-form-item__content {
				display: flex;
				width: calc(100% - 90px);
				justify-content: flex-start;
				align-items: center;
				flex-wrap: wrap;
				// 输入框
				.list_inp {
					border: 2px solid #5FB7FF;
					border-radius: 20px;
					padding: 0 10px;
					background: #fff;
					width: 100%;
					line-height: 36px;
					box-sizing: border-box;
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
				// 下拉框
				.list_sel {
					border: 2px solid #5FB7FF;
					border-radius: 20px;
					padding: 0 10px;
					background: #fff;
					width: 100%;
					line-height: 36px;
					box-sizing: border-box;
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
					border: 2px solid #5FB7FF;
					border-radius: 20px;
					padding: 12px;
					outline: none;
					color: #333;
					background: #fff;
					width: 400px;
					font-size: 14px;
					min-height: 120px;
				}
				//图片上传样式
				.el-upload-list  {
					//提示语
					.el-upload__tip {
						margin: 7px 0 0;
						color: #999;
						display: none;
						font-size: 12px;
						justify-content: flex-start;
						align-items: center;
					}
					//外部盒子
					.el-upload--picture-card {
						border: 2px solid #5FB7FF;
						cursor: pointer;
						background-color: #fff;
						border-radius: 20px;
						width: 90px;
						line-height: 100px;
						text-align: center;
						height: 90px;
						//图标
						.el-icon{
							color: #9E9E9E;
							font-size: 32px;
						}
					}
					.el-upload-list__item {
						border: 2px solid #5FB7FF;
						cursor: pointer;
						background-color: #fff;
						border-radius: 20px;
						width: 90px;
						line-height: 100px;
						text-align: center;
						height: 90px;
					}
				}
			}
		}
	}
	// 按钮盒子
	.formModel_btn_box {
		display: flex;
		width: 100%;
		justify-content: center;
		align-items: center;
		.formModel_cancel {
			border: 0;
			cursor: pointer;
			border-radius: 4px;
			padding: 0 24px;
			margin: 0 10px 0 0;
			outline: none;
			color: #B8B8B8;
			background: #CDE9FF;
			width: auto;
			font-size: 14px;
			height: 40px;
		}
		.formModel_cancel:hover {
			color: #333;
			background: rgba(205, 233, 255, 0.5);
			font-size: 16px;
		}
		
		.formModel_confirm {
			border: 0;
			cursor: pointer;
			border-radius: 4px;
			padding: 0 24px;
			box-shadow: inset 0px 4px 10px 0px rgba(147,147,147,0.302);
			outline: 4px solid #EAF5FF;
			margin: 0 20px;
			color: #2C2C2C;
			background: #96C6EE;
			width: auto;
			font-size: 14px;
			height: 40px;
		}
		.formModel_confirm:hover {
			background: rgba(150, 198, 238, 0.5);
			font-size: 16px;
		}
	}
</style>