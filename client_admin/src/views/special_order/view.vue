<template>
	<el-main class="bg edit_wrap">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">

							<el-col v-if="user_group === '管理员' || $check_field('get','order_no') || $check_field('add','order_no') || $check_field('set','order_no')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="订单编号" prop="order_no">
												<el-input id="order_no" v-model="form['order_no']" placeholder="请输入订单编号"
							  v-if="user_group === '管理员' || (form['special_order_id'] && $check_field('set','order_no')) || (!form['special_order_id'] && $check_field('add','order_no'))" :disabled="true"></el-input>
					<div v-else-if="$check_field('get','order_no')">{{form['order_no']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','product_name') || $check_field('add','product_name') || $check_field('set','product_name')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="品名" prop="product_name">
												<el-input id="product_name" v-model="form['product_name']" placeholder="请输入品名"
							  v-if="user_group === '管理员' || (form['special_order_id'] && $check_field('set','product_name')) || (!form['special_order_id'] && $check_field('add','product_name'))" :disabled="disabledObj['product_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','product_name')">{{form['product_name']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','type') || $check_field('add','type') || $check_field('set','type')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="类型" prop="type">
												<el-input id="type" v-model="form['type']" placeholder="请输入类型"
							  v-if="user_group === '管理员' || (form['special_order_id'] && $check_field('set','type')) || (!form['special_order_id'] && $check_field('add','type'))" :disabled="disabledObj['type_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','type')">{{form['type']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','specifications') || $check_field('add','specifications') || $check_field('set','specifications')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="规格" prop="specifications">
												<el-input id="specifications" v-model="form['specifications']" placeholder="请输入规格"
							  v-if="user_group === '管理员' || (form['special_order_id'] && $check_field('set','specifications')) || (!form['special_order_id'] && $check_field('add','specifications'))" :disabled="disabledObj['specifications_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','specifications')">{{form['specifications']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','weight') || $check_field('add','weight') || $check_field('set','weight')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="重量" prop="weight">
												<el-input id="weight" v-model="form['weight']" placeholder="请输入重量"
							  v-if="user_group === '管理员' || (form['special_order_id'] && $check_field('set','weight')) || (!form['special_order_id'] && $check_field('add','weight'))" :disabled="disabledObj['weight_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','weight')">{{form['weight']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','flavor') || $check_field('add','flavor') || $check_field('set','flavor')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="口味" prop="flavor">
												<el-input id="flavor" v-model="form['flavor']" placeholder="请输入口味"
							  v-if="user_group === '管理员' || (form['special_order_id'] && $check_field('set','flavor')) || (!form['special_order_id'] && $check_field('add','flavor'))" :disabled="disabledObj['flavor_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','flavor')">{{form['flavor']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','current_special_price') || $check_field('add','current_special_price') || $check_field('set','current_special_price')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="现特价" prop="current_special_price">
												<el-input id="current_special_price" v-model="form['current_special_price']" placeholder="请输入现特价"
							  v-if="user_group === '管理员' || (form['special_order_id'] && $check_field('set','current_special_price')) || (!form['special_order_id'] && $check_field('add','current_special_price'))" :disabled="disabledObj['current_special_price_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','current_special_price')">{{form['current_special_price']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','picture') || $check_field('add','picture') || $check_field('set','picture')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="图片" prop="picture">
								<el-upload :disabled="disabledObj['picture_isDisabled']" id="picture" class="avatar-uploader" drag
						accept="image/gif, image/jpeg, image/png, image/jpg" action="" :http-request="upload_picture"
						:show-file-list="false" v-if="user_group === '管理员' || (form['special_order_id'] && $check_field('set','picture')) || (!form['special_order_id'] && $check_field('add','picture'))">
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
								<el-col v-if="user_group === '管理员' || $check_field('get','user_no') || $check_field('add','user_no') || $check_field('set','user_no')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="用户编号" prop="user_no">
																		<div v-if="user_group !== '管理员'">
							{{ get_user_session_user_no(form['user_no']) }}
							<!--<el-input id="business_name" v-model="form['user_no']" placeholder="请输入用户编号"-->
							<!--v-if="user_group === '管理员' || (form['special_order_id'] && $check_field('set','user_no')) || (!form['special_order_id'] && $check_field('add','user_no'))" :disabled="disabledObj['user_no_isDisabled']"></el-input>-->
							<!--<div v-else-if="$check_field('get','user_no')">{{form['user_no']}}</div>-->
							<el-select v-if="user_group === '管理员' || (form['special_order_id'] && $check_field('set','user_no')) || (!form['special_order_id'] && $check_field('add','user_no'))" id="user_no" v-model="form['user_no']" :disabled="disabledObj['user_no_isDisabled']">
								<el-option v-for="o in list_user_user_no" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
										   :value="o['user_id']">
								</el-option>
							</el-select>
							<el-select v-else-if="$check_field('get','user_no')" id="user_no" v-model="form['user_no']" :disabled="true">
								<el-option v-for="o in list_user_user_no" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
										   :value="o['user_id']">
								</el-option>
							</el-select>
						</div>
						<el-select v-else id="user_no" v-model="form['user_no']" :disabled="disabledObj['user_no_isDisabled']">
							<el-option v-for="o in list_user_user_no" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
																</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','user_name') || $check_field('add','user_name') || $check_field('set','user_name')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="用户姓名" prop="user_name">
												<el-input id="user_name" v-model="form['user_name']" placeholder="请输入用户姓名"
							  v-if="user_group === '管理员' || (form['special_order_id'] && $check_field('set','user_name')) || (!form['special_order_id'] && $check_field('add','user_name'))" :disabled="disabledObj['user_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','user_name')">{{form['user_name']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','picking_type') || $check_field('add','picking_type') || $check_field('set','picking_type')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="取货类型" prop="picking_type">
								<el-select id="picking_type" v-model="form['picking_type']"
						v-if="user_group === '管理员' || (form['special_order_id'] && $check_field('set','picking_type')) || (!form['special_order_id'] && $check_field('add','picking_type'))">
						<el-option v-for="o in list_picking_type" :key="o" :label="o" :value="o">
						</el-option>
					</el-select>
					<div v-else-if="$check_field('get','picking_type')">{{form['picking_type']}}</div>
							</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','contact_number') || $check_field('add','contact_number') || $check_field('set','contact_number')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="联系电话" prop="contact_number">
								<el-input id="contact_number" v-model="form['contact_number']" placeholder="请输入联系电话" type="tel"
						v-if="user_group === '管理员' || (form['special_order_id'] && $check_field('set','contact_number')) || (!form['special_order_id'] && $check_field('add','contact_number'))">
					</el-input>
					<div v-else-if="$check_field('get','contact_number')">{{form['contact_number']}}</div>
							</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','address') || $check_field('add','address') || $check_field('set','address')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="地址" prop="address">
												<el-input id="address" v-model="form['address']" placeholder="请输入地址"
							  v-if="user_group === '管理员' || (form['special_order_id'] && $check_field('set','address')) || (!form['special_order_id'] && $check_field('add','address'))" :disabled="disabledObj['address_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','address')">{{form['address']}}</div>
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
				field: "special_order_id",
				url_add: "~/api/special_order/add?",
				url_set: "~/api/special_order/set?",
				url_get_obj: "~/api/special_order/get_obj?",
				url_upload: "~/api/special_order/upload?",

				query: {
					"special_order_id": 0,
				},

				form: {
								"order_no": this.$get_stamp(), // 订单编号
										"product_name":  '', // 品名
										"type":  '', // 类型
										"specifications":  '', // 规格
										"weight":  '', // 重量
										"flavor":  '', // 口味
										"current_special_price":  '', // 现特价
										"picture":  '', // 图片
										"user_no": 0, // 用户编号
										"user_name":  '', // 用户姓名
										"picking_type":  '', // 取货类型
										"contact_number":  '', // 联系电话
										"address":  '', // 地址
											"special_order_id": 0, // ID
						
				},
				disabledObj:{
								"order_no_isDisabled": false,
										"product_name_isDisabled": false,
										"type_isDisabled": false,
										"specifications_isDisabled": false,
										"weight_isDisabled": false,
										"flavor_isDisabled": false,
										"current_special_price_isDisabled": false,
										"picture_isDisabled": false,
										"user_no_isDisabled": false,
										"user_name_isDisabled": false,
										"picking_type_isDisabled": false,
										"contact_number_isDisabled": false,
										"address_isDisabled": false,
										},

	
		
		
		
		
		
		
		
		
					// 用户列表
				list_user_user_no: [],
						// 用户组
				group_user_user_no: "",
				
						// 取货类型选项列表
				list_picking_type: ['到店自取','外送到家'],
	
		
		
	
			}
		},
		methods: {


	
	
			
	
			
	
			
	
			
	
			
	
			
	
						/**
			 * 上传图片
			 * @param {Object} param 图片参数
			 */
			upload_picture(param){
						this.uploadFile(param.file, "picture");
					},
	
	
			
	
				/**
			 * 获取系统用户用户列表
			 */
			async get_list_user_user_no() {
                // if(this.user_group !== "管理员" && this.form["user_no"] === 0) {
                //     this.form["user_no"] = this.user.user_id;
                // }
                var json = await this.$get("~/api/user/get_list?user_group=系统用户");
                if(json.result && json.result.list){
                    this.list_user_user_no = json.result.list;
                }
                else if(json.error){
                    console.error(json.error);
                }
			},
					/**
			 * 获取系统用户用户组
			 */
			async get_group_user_user_no() {
							this.form["user_no"] = this.user.user_id;
							var json = await this.$get("~/api/user_group/get_obj?name=系统用户");
				if(json.result && json.result.obj){
					this.group_user_user_no = json.result.obj;
				}
				else if(json.error){
					console.error(json.error);
				}
			},
			get_user_session_user_no(id){
				var _this = this;
				var user_id = {"user_id":id}
				var url = "~/api/"+_this.group_user_user_no.source_table+"/get_obj?"
				this.$get(url, user_id, function(res) {
					if (res.result && res.result.obj) {
						var arr = []
						for (let key in res.result.obj) {
							arr.push(key)
						}
						var arrForm = []
									for (let key in _this.form) {
							arrForm.push(key)
						}
												_this.form["user_no"] = id
									_this.disabledObj['user_no' + '_isDisabled'] = true
						for (var i=0;i<arr.length;i++){
						  if (arr[i]!=='examine_state' && arr[i]!=='examine_reply') {
							for (var j = 0; j < arrForm.length; j++) {
							  if (arr[i] === arrForm[j]) {
								if (arr[i] !== "user_no") {
			                      _this.form[arrForm[j]] = res.result.obj[arr[i]]
			                      _this.disabledObj[arrForm[j] + '_isDisabled'] = true
								  break;
								} else {
								  _this.disabledObj[arrForm[j] + '_isDisabled'] = true
								}
							  }
							}
						  }
						}
					}
				});
			},
					get_user_user_no(id){
				var obj = this.list_user_user_no.getObj({"user_id":id});
				var ret = "";
				if(obj){
					if(obj.nickname){
						ret = obj.nickname;}
					else{
						ret = obj.username;
					}
				}
				return ret;
			},
			
	
			
	
			
	
			
	
		
			/**
			 * 获取对象之前
			 * @param {Object} param
			 */
			get_obj_before(param) {
				var form = "";
															// 获取缓存数据附加
				form = $.db.get("form");
							$.push(this.form ,form);
							
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
					bl = this.$check_action('/special_order/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/special_order/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/special_order/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/special_order/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/special_order/view','get');
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
																					this.get_list_user_user_no();
					this.get_group_user_user_no();
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
