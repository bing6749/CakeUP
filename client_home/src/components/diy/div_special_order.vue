<template>
	<view class="diy_details diy_div_special_order">
		<view v-if="Object.keys(obj).length!==0" class="warp">
			<view class="container">
				<view class="row">
					<view v-if="$check_field('get','order_no')" class="col-12 col-md-6">
						<view class="diy_title">
							<span>订单编号:</span>
						</view>
							<view class="diy_field diy_text">
							<text>
								{{obj["order_no"]}}
							</text>
						</view>
						</view>
					<view v-if="$check_field('get','product_name')" class="col-12 col-md-6">
						<view class="diy_title">
							<span>品名:</span>
						</view>
							<view class="diy_field diy_text">
							<text>
								{{obj["product_name"]}}
							</text>
						</view>
						</view>
					<view v-if="$check_field('get','type')" class="col-12 col-md-6">
						<view class="diy_title">
							<span>类型:</span>
						</view>
							<view class="diy_field diy_text">
							<text>
								{{obj["type"]}}
							</text>
						</view>
						</view>
					<view v-if="$check_field('get','specifications')" class="col-12 col-md-6">
						<view class="diy_title">
							<span>规格:</span>
						</view>
							<view class="diy_field diy_text">
							<text>
								{{obj["specifications"]}}
							</text>
						</view>
						</view>
					<view v-if="$check_field('get','weight')" class="col-12 col-md-6">
						<view class="diy_title">
							<span>重量:</span>
						</view>
							<view class="diy_field diy_text">
							<text>
								{{obj["weight"]}}
							</text>
						</view>
						</view>
					<view v-if="$check_field('get','flavor')" class="col-12 col-md-6">
						<view class="diy_title">
							<span>口味:</span>
						</view>
							<view class="diy_field diy_text">
							<text>
								{{obj["flavor"]}}
							</text>
						</view>
						</view>
					<view v-if="$check_field('get','current_special_price')" class="col-12 col-md-6">
						<view class="diy_title">
							<span>现特价:</span>
						</view>
							<view class="diy_field diy_text">
							<text>
								{{obj["current_special_price"]}}
							</text>
						</view>
						</view>
					<view v-if="$check_field('get','picture')" class="col-12 col-md-6">
						<view class="diy_title">
							<span>图片:</span>
						</view>
							<view class="diy_field diy_img">
							<image style="width:100%;height:auto;" :src="$fullUrl(obj['picture'])" mode="widthFix"></image>
						</view>
						</view>
					<view v-if="$check_field('get','user_no')" class="col-12 col-md-6">
						<view class="diy_title">
							<span>用户编号:</span>
						</view>
							<view class="diy_field diy_uid">
							<text>
								{{ get_user_user_no(obj['user_no']) }}
							</text>
						</view>
						</view>
					<view v-if="$check_field('get','user_name')" class="col-12 col-md-6">
						<view class="diy_title">
							<span>用户姓名:</span>
						</view>
							<view class="diy_field diy_text">
							<text>
								{{obj["user_name"]}}
							</text>
						</view>
						</view>
					<view v-if="$check_field('get','picking_type')" class="col-12 col-md-6">
						<view class="diy_title">
							<span>取货类型:</span>
						</view>
							<view class="diy_field diy_text">
							<text>
								{{obj["picking_type"]}}
							</text>
						</view>
						</view>
					<view v-if="$check_field('get','contact_number')" class="col-12 col-md-6">
						<view class="diy_title">
							<span>联系电话:</span>
						</view>
							<view class="diy_field diy_phone">
							<text>
								{{ obj['contact_number'] }}
							</text>
						</view>
						</view>
					<view v-if="$check_field('get','address')" class="col-12 col-md-6">
						<view class="diy_title">
							<span>地址:</span>
						</view>
							<view class="diy_field diy_text">
							<text>
								{{obj["address"]}}
							</text>
						</view>
						</view>
				</view>
			</view>
		</view>

	</view>
</template>

<script>
	import mixin from "@/libs/mixins/component.js";
	export default {
		mixins: [mixin],
		props: {
			obj_goods: {
				type: Object,
				default(){
					return {}
				}
			},
			query:{
				type: Object,
				default(){
					return {
						special_order_id: 0
					}
				}
			}
		},
		data() {
			return {
				obj_goods_type: {},
				obj: {},
													// 用户列表
				list_user_user_no: [],
								}
		},
		methods: {
			async get_obj_goods_type() {
				var res = await this.$get("~/api/goods_type/get_obj", {
					name: this.obj_goods.type
				})

				if (res.result.obj) {
					this.obj_goods_type = res.result.obj
				} else {
					console.log("没有请求到商品分类");
				}
			},
			async get_obj_by_goods() {
				var {
					source_table,
					source_field
				} = this.obj_goods_type
				var {
					source_id
				} = this.obj_goods
				var query = {}
				query[source_field] = source_id
				this.$get("~/api/" + source_table + "/get_obj", {}, (res) => {
					if (res.result.obj) {
						this.obj = res.result.obj
					} else {
						console.log("没有请求到商品分类");
					}
				})
			},
			async get_obj_by_id(){
				var res = await this.$get("~/api/special_order/get_obj", {
					special_order_id:this.query.special_order_id
				})

				if (res.result && res.result.obj) {
					this.obj = res.result.obj
				} else {
					console.log("没有请求到商品分类");
				}
			},
												/**
			 * 获取系统用户用户列表
			 */
			async get_list_user_user_no() {
				var json = await this.$get("~/api/user/get_list?user_group=系统用户");
				if(json.result && json.result.list){
					this.list_user_user_no = json.result.list;
				}
				else if(json.error){
					console.error(json.error);
				}
			},
			get_user_user_no(id){
				let obj = this.list_user_user_no;
				let ret = "";
				for(let i=0;i<obj.length;i++){
					if(obj[i].user_id==id){
						ret = obj[i].nickname+"-"+obj[i].username;
					}
				}
				return ret;
			},
							},
		created() {
												this.get_list_user_user_no();
							},
		async onLoad(){
			if (Object.keys(this.obj_goods).length !== 0) {
				await this.get_obj_goods_type();
				await this.get_obj_by_goods();
			} else if (this.query["special_order_id"] !==0) {
				await this.get_obj_by_id();
			}
		}
	}
</script>

<style scoped>
	.div_special_order_details {}

	.details {
		background-color: #fff;
		margin-bottom: 0.5rem;
		padding: 1rem;
		font-size: 10px;
	}

	.item {
		display: flex;
		padding: 0.2rem 0;
		border-bottom: 1px solid #eee;
	}

	.left_text {
		flex: 0 0 25%;
	}

	.right_text {
		flex: 0 0 75%;
	}
	.edit_nav{
		text-align: center;
		background-color: #fff;
		padding: 0.3rem;
		margin: 0.1rem 1rem;
		border: 1px solid #eee;
		border-radius: 0.5rem;
	}
</style>
