<template>
	<el-main class="bg edit_wrap">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">

							<el-col v-if="user_group === '管理员' || $check_field('get','product_name') || $check_field('add','product_name') || $check_field('set','product_name')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="品名" prop="product_name">
												<el-input id="product_name" v-model="form['product_name']" placeholder="请输入品名"
							  v-if="user_group === '管理员' || (form['daily_specials_id'] && $check_field('set','product_name')) || (!form['daily_specials_id'] && $check_field('add','product_name'))" :disabled="disabledObj['product_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','product_name')">{{form['product_name']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','type') || $check_field('add','type') || $check_field('set','type')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="类型" prop="type">
								<el-select id="type" v-model="form['type']"
						v-if="user_group === '管理员' || (form['daily_specials_id'] && $check_field('set','type')) || (!form['daily_specials_id'] && $check_field('add','type'))">
						<el-option v-for="o in list_type" :key="o['type']" :label="o['type']"
							:value="o['type']">
						</el-option>
					</el-select>
					<div v-else-if="$check_field('get','type')">{{form['type']}}</div>
							</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','specifications') || $check_field('add','specifications') || $check_field('set','specifications')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="规格" prop="specifications">
												<el-input id="specifications" v-model="form['specifications']" placeholder="请输入规格"
							  v-if="user_group === '管理员' || (form['daily_specials_id'] && $check_field('set','specifications')) || (!form['daily_specials_id'] && $check_field('add','specifications'))" :disabled="disabledObj['specifications_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','specifications')">{{form['specifications']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','weight') || $check_field('add','weight') || $check_field('set','weight')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="重量" prop="weight">
												<el-input id="weight" v-model="form['weight']" placeholder="请输入重量"
							  v-if="user_group === '管理员' || (form['daily_specials_id'] && $check_field('set','weight')) || (!form['daily_specials_id'] && $check_field('add','weight'))" :disabled="disabledObj['weight_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','weight')">{{form['weight']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','flavor') || $check_field('add','flavor') || $check_field('set','flavor')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="口味" prop="flavor">
												<el-input id="flavor" v-model="form['flavor']" placeholder="请输入口味"
							  v-if="user_group === '管理员' || (form['daily_specials_id'] && $check_field('set','flavor')) || (!form['daily_specials_id'] && $check_field('add','flavor'))" :disabled="disabledObj['flavor_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','flavor')">{{form['flavor']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','original_price') || $check_field('add','original_price') || $check_field('set','original_price')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="原价" prop="original_price">
								<el-input-number id="original_price" v-model.number="form['original_price']"
						v-if="user_group === '管理员' || (form['daily_specials_id'] && $check_field('set','original_price')) || (!form['daily_specials_id'] && $check_field('add','original_price'))" :disabled="disabledObj['original_price_isDisabled']"></el-input-number>
					<div v-else-if="$check_field('get','original_price')">{{form['original_price']}}</div>
							</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','current_special_price') || $check_field('add','current_special_price') || $check_field('set','current_special_price')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="现特价" prop="current_special_price">
								<el-input-number id="current_special_price" v-model.number="form['current_special_price']"
						v-if="user_group === '管理员' || (form['daily_specials_id'] && $check_field('set','current_special_price')) || (!form['daily_specials_id'] && $check_field('add','current_special_price'))" :disabled="disabledObj['current_special_price_isDisabled']"></el-input-number>
					<div v-else-if="$check_field('get','current_special_price')">{{form['current_special_price']}}</div>
							</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','quality_guarantee_period') || $check_field('add','quality_guarantee_period') || $check_field('set','quality_guarantee_period')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="保质期" prop="quality_guarantee_period">
												<el-input id="quality_guarantee_period" v-model="form['quality_guarantee_period']" placeholder="请输入保质期"
							  v-if="user_group === '管理员' || (form['daily_specials_id'] && $check_field('set','quality_guarantee_period')) || (!form['daily_specials_id'] && $check_field('add','quality_guarantee_period'))" :disabled="disabledObj['quality_guarantee_period_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','quality_guarantee_period')">{{form['quality_guarantee_period']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','picture') || $check_field('add','picture') || $check_field('set','picture')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="图片" prop="picture">
								<el-upload :disabled="disabledObj['picture_isDisabled']" id="picture" class="avatar-uploader" drag
						accept="image/gif, image/jpeg, image/png, image/jpg" action="" :http-request="upload_picture"
						:show-file-list="false" v-if="user_group === '管理员' || (form['daily_specials_id'] && $check_field('set','picture')) || (!form['daily_specials_id'] && $check_field('add','picture'))">
						<img v-if="form['picture']" :src="$fullUrl(form['picture'])" class="avatar">
						<i v-else class="el-icon-plus avatar-uploader-icon"></i>
					</el-upload>
					<el-image v-else-if="$check_field('get','picture')" style="width: 100px; height: 100px"
						:src="$fullUrl(form['picture'])" :preview-src-list="[$fullUrl(form['picture'])]">
						<div slot="error" class="image-slot">
							<img src="../../../public/img/error.png" style="width: 90px; height: 90px" />
						</div>
					</el-image>
							</el-form-item>
			</el-col>
					
	
	
	
	
	
	
			<el-col :xs="24" :sm="12" :lg="8" class="el_form_btn_warp">
				<el-form-item>
					<el-button type="primary" @click="submit()">提交</el-button>
					<el-button @click="cancel()">取消</el-button>
				</el-form-item>
			</el-col>

		</el-form>
	</el-main>
</template>

<script>
	import mixin from "@/mixins/page.js";

	export default {
		mixins: [mixin],
		data() {
			return {
				field: "daily_specials_id",
				url_add: "~/api/daily_specials/add?",
				url_set: "~/api/daily_specials/set?",
				url_get_obj: "~/api/daily_specials/get_obj?",
				url_upload: "~/api/daily_specials/upload?",

				query: {
					"daily_specials_id": 0,
				},

				form: {
								"product_name":  '', // 品名
										"type":  '', // 类型
										"specifications":  '', // 规格
										"weight":  '', // 重量
										"flavor":  '', // 口味
										"original_price":  0, // 原价
										"current_special_price":  0, // 现特价
										"quality_guarantee_period":  '', // 保质期
										"picture":  '', // 图片
											"daily_specials_id": 0, // ID
						
				},
				disabledObj:{
								"product_name_isDisabled": false,
										"type_isDisabled": false,
										"specifications_isDisabled": false,
										"weight_isDisabled": false,
										"flavor_isDisabled": false,
					          			"original_price_isDisabled": false,
					          			"current_special_price_isDisabled": false,
										"quality_guarantee_period_isDisabled": false,
										"picture_isDisabled": false,
										},

	
						// 类型选项列表
				list_type: [""],
	
		
		
		
		
		
		
		
	
			}
		},
		methods: {


	
	
			
				/**
			 * 获取类型列表
			 */
			async get_list_type() {
				var json = await this.$get("~/api/type/get_list?");
				if(json.result && json.result.list){
					this.list_type = json.result.list;
				}
				else if(json.error){
					console.error(json.error);
				}
			},
	
			
	
			
	
			
	
			
	
			
	
			
	
						/**
			 * 上传图片
			 * @param {Object} param 图片参数
			 */
			upload_picture(param){
						this.uploadFile(param.file, "picture");
					},
	
	
		
			/**
			 * 获取对象之前
			 * @param {Object} param
			 */
			get_obj_before(param) {
				var form = "";
													
				if(this.form && form){
					Object.keys(this.form).forEach(key => {
						Object.keys(form).forEach(dbKey => {
							// if(dbKey === "charging_standard"){
							// 	this.form['charging_rules'] = form[dbKey];
							// 	this.disabledObj['charging_rules_isDisabled'] = true;
							// };
							if(key === dbKey){
								this.disabledObj[key+'_isDisabled'] = true;
							}
						})
					})
				}
																						$.db.del("form");
				return param;
			},

			/**
			 * 获取对象之后
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_after(json, func){


																											

			},


			is_view(){
				var bl = this.user_group == "管理员";

				if(!bl){
					bl = this.$check_action('/daily_specials/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/daily_specials/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/daily_specials/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/daily_specials/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/daily_specials/view','get');
					console.log(bl ? "你有视图查询权限视作有查询权限" : "你没有视图查询权限");
				}

				console.log(bl ? "具有当前页面的查看权，请注意这不代表你有字段的查看权" : "无权查看当前页，请注意即便有字段查询权限没有页面查询权限也不行");

				return bl;
			},
			/**
			 * 上传文件
			 * @param {Object} param
			 */
			uploadimg(param) {
				this.uploadFile(param.file, "avatar");
			},

		},
		created() {
						this.get_list_type();
																		},
	}
</script>

<style>
	.avatar-uploader .el-upload {
		border: 1px dashed #d9d9d9;
		border-radius: 6px;
		cursor: pointer;
		position: relative;
		overflow: hidden;
	}

	.avatar-uploader .el-upload:hover {
		border-color: #409EFF;
	}

	.avatar-uploader-icon {
		font-size: 28px;
		color: #8c939d;
		width: 178px;
		height: 178px;
		line-height: 178px;
		text-align: center;
	}

	.avatar {
		width: 178px;
		height: 178px;
		display: block;
	}




</style>
