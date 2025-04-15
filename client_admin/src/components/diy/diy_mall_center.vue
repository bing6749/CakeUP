<template>
	<el-form ref="form" :rules="rules" :model="form" status-icon label-width="80px">
			<el-col :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
			<el-form-item label="规格" prop="specifications">
						<el-input id="specifications" v-model="form['specifications']" placeholder="请输入规格"
					v-if="user_group == '管理员' || (form['mall_center_id'] && $check_field('set','specifications') ) || $check_field('add','specifications')"></el-input>
				<div v-else-if="$check_field('get','specifications')">{{form['specifications']}}</div>
					</el-form-item>
		</el-col>
				<el-col :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
			<el-form-item label="重量" prop="weight">
						<el-input id="weight" v-model="form['weight']" placeholder="请输入重量"
					v-if="user_group == '管理员' || (form['mall_center_id'] && $check_field('set','weight') ) || $check_field('add','weight')"></el-input>
				<div v-else-if="$check_field('get','weight')">{{form['weight']}}</div>
					</el-form-item>
		</el-col>
				<el-col :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
			<el-form-item label="口味" prop="flavor">
						<el-input id="flavor" v-model="form['flavor']" placeholder="请输入口味"
					v-if="user_group == '管理员' || (form['mall_center_id'] && $check_field('set','flavor') ) || $check_field('add','flavor')"></el-input>
				<div v-else-if="$check_field('get','flavor')">{{form['flavor']}}</div>
					</el-form-item>
		</el-col>
	
		<el-col :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
			<el-form-item label="点击数" prop="hits">
				<el-input-number id="hits" v-model="form['hits']"
					v-if="user_group == '管理员' || $check_field('set','hits')"></el-input-number>
				<div v-else-if="$check_field('get','hits')">{{form["hits"]}}</div>
			</el-form-item>
		</el-col>


		<el-col :xs="24" :sm="24" :lg="24" style="text-align: center;" class="el_form_btn_warp">
			<el-button type="primary" @click="submit()">提交</el-button>
			<el-button @click="cancel()">取消</el-button>
		</el-col>

	</el-form>
</template>

<script>
	import mixin from "../../mixins/component.js";

	export default {
		mixins: [mixin],
		props:{
			query: {
				type: Object,
				default: function(){
					return {
						"mall_center_id": 0
					}
				}
			},
			form_goods:{
				type: Object,
				default: function(){
					return {}
				}
			},
			func_check:{
				type: Function,
				default: function(fun){
					console.log("调试输出",fun);
				}
			},
			func_submit:{
				type: Function,
				default: function(fun){
					console.log("调试输出",fun);
				}
			}
		},
		data() {
			return {
				field: "mall_center_id",
				url_add: "~/api/mall_center/add?",
				url_set: "~/api/mall_center/set?",
				url_get_obj: "~/api/mall_center/get_obj?",
				url_upload: "~/api/mall_center/upload?",

				form: {
						"specifications":  '',
							"weight":  '',
							"flavor":  '',
						"hits": 0,
				},

			
				rules: {
					"specifications": [     {required: true,message: '规格不能为空'},  ],
					"weight": [     {required: true,message: '重量不能为空'},  ],
					"flavor": [     {required: true,message: '口味不能为空'},  ],
				}

			}
		},
		methods: {


	
	
		
	
		
	
	
			submit(){
				this.func_check(()=>{
					this.$refs["form"].validate((valid)} => {
						if (valid) {
							this.submit();
						} else {
							console.error('error 提交失败!!');
						}
					});
				})
			},

			submit_after(){
				var source_id = this.form_goods.source_id;
				if(source_id){
					this.func_submit();
				}else{
					this.$get('~/api/mall_center/get_obj?',this.form,(res)=>{
						if(res.result && res.result.obj){
							this.form_goods.source_id = res.result.obj["mall_center_id"];
							this.func_submit();
						}else{
							console.error(res.error);
						}

					})
				}
			}
		},
		created() {
					}
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
