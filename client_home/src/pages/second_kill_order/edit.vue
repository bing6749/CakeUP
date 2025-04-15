<template>
	<view class="diy_edit page_second_kill_order" id="second_kill_order_edit">
		<view class='warp'>
			<view class='container'>
				<view class='row'>
						<view v-if="$check_field('set','order_no') || $check_field('add','order_no') || $check_field('get','order_no')" class="col-12 col-md-6 row-item">
						<view class="diy_title diy_text_row">
							<text>
								订单编号:
							</text>
						</view>
								<!-- 文本 -->
									<view class="diy_field diy_text diy_text_row">
							<input type="text" id="form_order_no" v-model="form['order_no']" placeholder="请输入订单编号" v-if="(form['order_no'] && $check_field('set','order_no')) || (!form['order_no'] && $check_field('add','order_no'))" :disabled="true" />
							<text v-else-if="$check_field('get','order_no')">{{ form['order_no'] }}</text>
						</view>
										</view>
							<view v-if="$check_field('set','product_name') || $check_field('add','product_name') || $check_field('get','product_name')" class="col-12 col-md-6 row-item">
						<view class="diy_title diy_text_row">
							<text>
								品名:
							</text>
						</view>
								<!-- 文本 -->
									<view class="diy_field diy_text diy_text_row">
							<input type="text" id="form_product_name" v-model="form['product_name']" placeholder="请输入品名" v-if="(form['product_name'] && $check_field('set','product_name')) || (!form['product_name'] && $check_field('add','product_name'))" :disabled="disabledObj['product_name_isDisabled']" />
							<text v-else-if="$check_field('get','product_name')">{{ form['product_name'] }}</text>
						</view>
										</view>
							<view v-if="$check_field('set','type') || $check_field('add','type') || $check_field('get','type')" class="col-12 col-md-6 row-item">
						<view class="diy_title diy_text_row">
							<text>
								类型:
							</text>
						</view>
								<!-- 文本 -->
									<view class="diy_field diy_text diy_text_row">
							<input type="text" id="form_type" v-model="form['type']" placeholder="请输入类型" v-if="(form['type'] && $check_field('set','type')) || (!form['type'] && $check_field('add','type'))" :disabled="disabledObj['type_isDisabled']" />
							<text v-else-if="$check_field('get','type')">{{ form['type'] }}</text>
						</view>
										</view>
							<view v-if="$check_field('set','specifications') || $check_field('add','specifications') || $check_field('get','specifications')" class="col-12 col-md-6 row-item">
						<view class="diy_title diy_text_row">
							<text>
								规格:
							</text>
						</view>
								<!-- 文本 -->
									<view class="diy_field diy_text diy_text_row">
							<input type="text" id="form_specifications" v-model="form['specifications']" placeholder="请输入规格" v-if="(form['specifications'] && $check_field('set','specifications')) || (!form['specifications'] && $check_field('add','specifications'))" :disabled="disabledObj['specifications_isDisabled']" />
							<text v-else-if="$check_field('get','specifications')">{{ form['specifications'] }}</text>
						</view>
										</view>
							<view v-if="$check_field('set','weight') || $check_field('add','weight') || $check_field('get','weight')" class="col-12 col-md-6 row-item">
						<view class="diy_title diy_text_row">
							<text>
								重量:
							</text>
						</view>
								<!-- 文本 -->
									<view class="diy_field diy_text diy_text_row">
							<input type="text" id="form_weight" v-model="form['weight']" placeholder="请输入重量" v-if="(form['weight'] && $check_field('set','weight')) || (!form['weight'] && $check_field('add','weight'))" :disabled="disabledObj['weight_isDisabled']" />
							<text v-else-if="$check_field('get','weight')">{{ form['weight'] }}</text>
						</view>
										</view>
							<view v-if="$check_field('set','flavor') || $check_field('add','flavor') || $check_field('get','flavor')" class="col-12 col-md-6 row-item">
						<view class="diy_title diy_text_row">
							<text>
								口味:
							</text>
						</view>
								<!-- 文本 -->
									<view class="diy_field diy_text diy_text_row">
							<input type="text" id="form_flavor" v-model="form['flavor']" placeholder="请输入口味" v-if="(form['flavor'] && $check_field('set','flavor')) || (!form['flavor'] && $check_field('add','flavor'))" :disabled="disabledObj['flavor_isDisabled']" />
							<text v-else-if="$check_field('get','flavor')">{{ form['flavor'] }}</text>
						</view>
										</view>
							<view v-if="$check_field('set','price_spike') || $check_field('add','price_spike') || $check_field('get','price_spike')" class="col-12 col-md-6 row-item">
						<view class="diy_title diy_text_row">
							<text>
								秒杀价:
							</text>
						</view>
								<!-- 文本 -->
									<view class="diy_field diy_text diy_text_row">
							<input type="text" id="form_price_spike" v-model="form['price_spike']" placeholder="请输入秒杀价" v-if="(form['price_spike'] && $check_field('set','price_spike')) || (!form['price_spike'] && $check_field('add','price_spike'))" :disabled="disabledObj['price_spike_isDisabled']" />
							<text v-else-if="$check_field('get','price_spike')">{{ form['price_spike'] }}</text>
						</view>
										</view>
							<view v-if="$check_field('set','picture') || $check_field('add','picture') || $check_field('get','picture')" class="col-12 col-md-6 row-item">
						<view class="diy_title diy_text_row">
							<text>
								图片:
							</text>
						</view>
								<!-- 图片 -->
						<!-- 修改权限 -->
						<view class="diy_field diy_img diy_text_row" v-if="form['picture'] && $check_field('set','picture')">
							<image v-if="disabledObj['picture_isDisabled']" :src="$fullUrl(form['picture'])" />
							<image v-if="!disabledObj['picture_isDisabled']" :src="$fullUrl(form['picture'])" @click="change_img('picture')" />
						</view>
						<!-- 添加权限 -->
						<view class="diy_field diy_img diy_text_row" v-else-if="!form['picture'] && $check_field('add','picture')">
							<view v-if="disabledObj['picture_isDisabled']" class="btn_add_img">
								<text>+</text>
							</view>
							<view v-if="!disabledObj['picture_isDisabled']" class="btn_add_img diy_text_row" @click="change_img('picture')">
								<text>+</text>
							</view>
						</view>
						<!-- 查询权限 -->
						<view class="diy_field diy_img diy_text_row" v-else-if="$check_field('get','picture')">
							<image :src="$fullUrl(form['picture'])" />
						</view>
						<uni-icons style="display: none;" class="forward" type="forward" id="form_img_picture"></uni-icons>
							</view>
							<view v-if="$check_field('set','user_no') || $check_field('add','user_no') || $check_field('get','user_no')" class="col-12 col-md-6 row-item">
						<view class="diy_title diy_text_row">
							<text>
								用户编号:
							</text>
						</view>
						<view class="diy_field diy_down diy_text_row diy_select_flex">
							<uni-data-select
									id="form_user_no"
									v-model="form['user_no']"
									:localdata="list_user_user_no"
									:clear="!disabledObj['user_no_isDisabled']"
									:disabled="disabledObj['user_no_isDisabled']"
									v-if="(form['user_no'] && $check_field('set','user_no')) || (!form['user_no'] && $check_field('add','user_no'))"
							></uni-data-select>
							<text v-else-if="$check_field('get','user_no')">{{ form['user_no'] }}</text>
						</view>
					</view>
							<view v-if="$check_field('set','user_name') || $check_field('add','user_name') || $check_field('get','user_name')" class="col-12 col-md-6 row-item">
						<view class="diy_title diy_text_row">
							<text>
								用户姓名:
							</text>
						</view>
								<!-- 文本 -->
									<view class="diy_field diy_text diy_text_row">
							<input type="text" id="form_user_name" v-model="form['user_name']" placeholder="请输入用户姓名" v-if="(form['user_name'] && $check_field('set','user_name')) || (!form['user_name'] && $check_field('add','user_name'))" :disabled="disabledObj['user_name_isDisabled']" />
							<text v-else-if="$check_field('get','user_name')">{{ form['user_name'] }}</text>
						</view>
										</view>
							<view v-if="$check_field('set','picking_type') || $check_field('add','picking_type') || $check_field('get','picking_type')" class="col-12 col-md-6 row-item">
						<view class="diy_title diy_text_row">
							<text>
								取货类型:
							</text>
						</view>
								<!-- 选项 -->
						<view class="diy_field diy_down diy_text_row diy_select_flex">
							<uni-data-select
									id="form_picking_type"
									v-model="form['picking_type']"
									:localdata="list_picking_type"
									v-if="(form['picking_type'] && $check_field('set','picking_type')) || (!form['picking_type'] && $check_field('add','picking_type'))"
							></uni-data-select>
							<text v-else-if="$check_field('get','picking_type')">{{ form['picking_type'] }}</text>
						</view>
							</view>
							<view v-if="$check_field('set','contact_number') || $check_field('add','contact_number') || $check_field('get','contact_number')" class="col-12 col-md-6 row-item">
						<view class="diy_title diy_text_row">
							<text>
								联系电话:
							</text>
						</view>
								<!-- 手机 -->
						<view class="diy_field diy_phone diy_text_row">
							<input type="tel" id="form_contact_number" v-model="form['contact_number']" placeholder="请输入联系电话" v-if="(form['contact_number'] && $check_field('set','contact_number')) || (!form['contact_number'] && $check_field('add','contact_number'))"  :disabled="disabledObj['contact_number_isDisabled']" />
							<text v-else-if="$check_field('get','contact_number')">{{ form['contact_number'] }}</text>
						</view>
							</view>
							<view v-if="$check_field('set','address') || $check_field('add','address') || $check_field('get','address')" class="col-12 col-md-6 row-item">
						<view class="diy_title diy_text_row">
							<text>
								地址:
							</text>
						</view>
								<!-- 文本 -->
									<view class="diy_field diy_text diy_text_row">
							<input type="text" id="form_address" v-model="form['address']" placeholder="请输入地址" v-if="(form['address'] && $check_field('set','address')) || (!form['address'] && $check_field('add','address'))" :disabled="disabledObj['address_isDisabled']" />
							<text v-else-if="$check_field('get','address')">{{ form['address'] }}</text>
						</view>
										</view>
	
				</view>
				<view class="row">
					<view class="col-12">
						<view class="btn_box">
							<button class="btn_submit primary_btn" @click="submit()">提交</button>
						</view>
					</view>
				</view>
			</view>
		</view>
	</view>
</template>

<script>
import mixin from "@/libs/mixins/page.js";
export default {
	mixins:[mixin],
	components:{},
	data(){
		return{
			url_get_obj:"~/api/second_kill_order/get_obj?",
			url_add:"~/api/second_kill_order/add?",
			url_set:"~/api/second_kill_order/set?",

			// 登录权限
			oauth: {
				"signIn": true,
				"user_group": []
			},

			// 查询条件
			query: {
					"order_no": "",
						"product_name": "",
						"type": "",
						"specifications": "",
						"weight": "",
						"flavor": "",
						"price_spike": "",
						"picture": "",
						"user_no": 0,
						"user_name": "",
						"picking_type": "",
						"contact_number": "",
						"address": "",
					"second_kill_order_id": 0
			},

			obj: {
					"order_no": this.$get_stamp(), // 订单编号
						"product_name":  '', // 品名
						"type":  '', // 类型
						"specifications":  '', // 规格
						"weight":  '', // 重量
						"flavor":  '', // 口味
						"price_spike":  '', // 秒杀价
						"picture":  '', // 图片
						"user_no": 0, // 用户编号
						"user_name":  '', // 用户姓名
						"picking_type":  '', // 取货类型
						"contact_number":  '', // 联系电话
						"address":  '', // 地址
					"second_kill_order_id": 0,

			},

			// 表单字段
			form: {
					"order_no": this.$get_stamp(), // 订单编号
						"product_name":  '', // 品名
						"type":  '', // 类型
						"specifications":  '', // 规格
						"weight":  '', // 重量
						"flavor":  '', // 口味
						"price_spike":  '', // 秒杀价
						"picture":  '', // 图片
						"user_no": 0, // 用户编号
						"user_name":  '', // 用户姓名
						"picking_type":  '', // 取货类型
						"contact_number":  '', // 联系电话
						"address":  '', // 地址
					"second_kill_order_id": 0,
			},
			disabledObj:{
					"order_no_isDisabled": false,
						"product_name_isDisabled": false,
						"type_isDisabled": false,
						"specifications_isDisabled": false,
						"weight_isDisabled": false,
						"flavor_isDisabled": false,
						"price_spike_isDisabled": false,
						"picture_isDisabled": false,
						"user_no_isDisabled": false,
						"user_name_isDisabled": false,
						"picking_type_isDisabled": false,
						"contact_number_isDisabled": false,
						"address_isDisabled": false,
				},

																					// 用户列表
			list_user_user_no: [],
							list_picking_type: [],
						
			field:"second_kill_order_id",
			table_key:"second_kill_order",

		}
	},
	methods: {
			
	
				
	
				
	
				
	
				
	
				
	
				
	
				
	
					/**
		 * 获取系统用户用户列表
		 */
		async get_list_user_user_no() {
			// if(this.user_group !== "管理员" && this.form["user_no"] === 0) {
			//     this.form["user_no"] = this.user.user_id;
			// }
			var json = await this.$get("~/api/user/get_list?user_group=系统用户");
			if(json.result && json.result.list){
				json.result.list.map((o) => this.list_user_user_no.push({value:o.user_id,text:o.nickname + '-' + o.username}));
			}
			else if(json.error){
				console.error(json.error);
			}
		},
				async get_user_session_user_no(){
			var _this = this;
			var json = await this.$get("~/api/user_group/get_obj?name=系统用户");
			if(json.result && json.result.obj){
				var source_table = json.result.obj.source_table;
				var user_id = _this.$store.state.user.user_id;
				if (user_id){
					var url = "~/api/"+source_table+"/get_obj?"
					this.$get(url, {"user_id":_this.$store.state.user.user_id}, function(res) {
						if (res.result && res.result.obj) {
							var arr = []
							for (let key in res.result.obj) {
								arr.push(key)
							}
							var arrForm = []
							for (let key in _this.form) {
								arrForm.push(key)
							}
							_this.form["user_no"] = user_id
							_this.disabledObj['user_no' + '_isDisabled'] = true
							for (var i=0;i<arr.length;i++){
                if (arr[i]!=='examine_state' && arr[i]!=='examine_reply') {
                  for (var j = 0; j < arrForm.length; j++) {
                    if (arr[i] === arrForm[j]) {
                      if (arr[i] !== "user_no") {
                        _this.form[arrForm[j]] = res.result.obj[arr[i]]
                        _this.disabledObj[arrForm[j] + '_isDisabled'] = true
                        break;
                      }
                    }
                  }
                }
							}
						}
					});
				}
			}
			else if(json.error){
				console.error(json.error);
			}
		},
	
	
				
	
				/**
		 * 获取取货类型列表
		 */
		async get_list_picking_type() {
					['到店自取','外送到家'].map((o) => this.list_picking_type.push({value:o,text:o}));
						},
			
	
				
	
				
	
			change_file(key_name){
			var _self = this;
				this.$chooseFile().then(res=>{
					console.log(res)

						const uploadTask = uni.uploadFile({
							url: _self.$fullUrl("/api/feedback/upload?"),
							filePath: res[0].path,
							name: "file",
							formData: {
								i_want_to_customize: "test",
							},
							header: {
								"x-auth-token": _self.$store.state.user.token,
							},
							success: function(uploadFileRes) {
								console.log(uploadFileRes)
								var filename = JSON.parse(uploadFileRes.data).result.url;
								_self.form[key_name] = filename;
							},
						});

						uploadTask.onProgressUpdate(function(res) {
							_self.percent = res.progress;
							console.log("上传进度" + res.progress);
							console.log("已经上传的数据长度" + res.totalBytesSent);
							console.log(
								"预期需要上传的数据总长度" + res.totalBytesExpectedToSend
							);
						});

				})
		},
		change_img(key_name) {
			var _self = this;
			_self.upload_img_flag = false
			// 选择图像方法
			uni.chooseImage({
				count: 1,
				sizeType: ['original', 'compressed'], //可以指定是原图还是压缩图，默认二者都有
				sourceType: ['album'], //从相册选择
				success: function(res) {
					const tempFilePaths = res.tempFilePaths;
					const uploadTask = uni.uploadFile({
						url: _self.$fullUrl('/api/second_kill_order/upload?'),
						filePath: tempFilePaths[0],
						name: 'file',
						formData: {
							'second_kill_order': 'test'
						},
						header: {
							'x-auth-token': _self.$store.state.user.token
						},
						success: function(uploadFileRes) {
							var filename = JSON.parse(uploadFileRes.data).result.url
							var img_url = filename
							_self.form[key_name] = img_url
						}
					});

					uploadTask.onProgressUpdate(function(res) {
						_self.percent = res.progress;
						console.log('上传进度' + res.progress);
						console.log('已经上传的数据长度' + res.totalBytesSent);
						console.log('预期需要上传的数据总长度' + res.totalBytesExpectedToSend);
					});
				},
				error: function(e) {
					console.log(e);
				}
			});
		},

		/**
		 * 获取对象后获取缓存表单
		 * @param {Object} json
		 * @param {Object} func
		 */
		get_obj_before(param){
			var form = uni.db.get("form");
			if (form) {
        delete(form.examine_state)
        delete(form.examine_reply)
				this.obj = uni.push(this.obj ,form);
				this.form = uni.push(this.form ,form);
			}
			var arr = []
			for (let key in form) {
				arr.push(key)
			}
			for (var i=0;i<arr.length;i++){
				this.disabledObj[arr[i] + '_isDisabled'] = true
			}
																													uni.db.del("form");
			return param;
		},

		/**
		 * 获取对象后获取缓存表单
		 * @param {Object} json
		 * @param {Object} func
		 */
		get_obj_after(json ,func){
			var form = uni.db.get("form");
			var obj = Object.assign({} ,form ,this.obj);
			if (form) {
				this.obj = uni.push(this.obj ,obj);
			}
			if (form) {
				this.form = uni.push(this.form ,form);
			}
			if(func){
				func(json);
			}
		},

	},
	onLoad(){
																												this.get_user_session_user_no();
				this.get_list_user_user_no();
							this.get_list_picking_type();
										},
}
</script>

<style scoped>
	input{
		font-size: 10px;
	}

	.form_edit {
		background-color: #fff;
		margin-bottom: 0.5rem;
		padding: 1rem;
		font-size: 10px;
	}

	.item {
		display: flex;
		padding: 0.2rem 0;
	}

	.left_text {
		flex: 0 0 25%;
		display: flex;
		align-items: center;
	}

	.right_text {
		flex: 0 0 75%;
		border-bottom: 1px solid #eee;
	}
	.right_text.btn_warp{
		border-bottom: 0;
	}

	.btn_submit {
		text-align: center;
		background-color: #fff;
		padding: 0.3rem;
		margin: 0.1rem 1rem;
		border: 1px solid #eee;
		border-radius: 0.5rem;
	}

	.btn_submit:hover {
		opacity: 0.5;
	}
	.btn_add_img{
		color: #D3D3D3;
		text-align: center;
		border: 1px solid #eee;
		height: 5rem;
		width: 5rem;
		position: relative;
	}
	.btn_add_img text{
		font-size: 35px;
		position: absolute;
		left: 50%;
		top: 50%;
		transform: translate(-50%,-50%);
	}




</style>
<style scoped>
/*新样式*/
.diy_text_row {
  display: inline-block;
}
.container {
	margin-top:1rem ;
	padding: 1rem;
    -webkit-box-shadow: 0px 0px 0px #888888;
    box-shadow: 0px 0px 0px #888888;
}
.primary_btn{
		background-color: #22B8B8;
		color: #FFFFFF;
	}
	.btn_submit{
		padding: 0;
		margin-top:1rem ;
	}
	.row-item {
		padding: 10px 10px;
	    background: #f8f6fc;
		margin-bottom: 1rem;
	}
	.diy_field{
		padding-left: 1rem;
	}
	.diy_title{
		align-items: center;
        font-size: 14px;
        color: #333;
	}

	.row-item{
		display: flex !important;
		align-items: baseline;
	}
	.diy_select_flex{
		flex: 1;
	}
	.query_select{
		flex: 1;
		border-color: rgb(229, 229, 229);
		background-color: rgb(255, 255, 255);
		border-radius: 4px;
		box-sizing: border-box;
		flex: 1;
		width: 100%;
		line-height: 2;
		font-size: 14px;
		height: 2.4em;
		min-height: 2.4em;
		display: block;
		outline:none;
	}
</style>

