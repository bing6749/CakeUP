<template>
	<view class="diy_details diy_div_daily_specials">
		<view v-if="Object.keys(obj).length!==0" class="warp">
			<view class="container">
				<view class="row">
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
					<view v-if="$check_field('get','original_price')" class="col-12 col-md-6">
						<view class="diy_title">
							<span>原价:</span>
						</view>
							<view class="diy_field diy_number">
							<text>
								{{ obj["original_price"] }}
							</text>
						</view>
						</view>
					<view v-if="$check_field('get','current_special_price')" class="col-12 col-md-6">
						<view class="diy_title">
							<span>现特价:</span>
						</view>
							<view class="diy_field diy_number">
							<text>
								{{ obj["current_special_price"] }}
							</text>
						</view>
						</view>
					<view v-if="$check_field('get','quality_guarantee_period')" class="col-12 col-md-6">
						<view class="diy_title">
							<span>保质期:</span>
						</view>
							<view class="diy_field diy_text">
							<text>
								{{obj["quality_guarantee_period"]}}
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
				</view>
			</view>
		</view>

			<view class="warp">
			<view class="container">
				<view class="row">
					<view class="col">
						<button type="button" class="diy_btn" @click="to_form('/pages/special_order/edit')" v-if="$check_action('/special_order/edit','add') || $check_action('/special_order/edit','set')" >购买</button>
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
						daily_specials_id: 0
					}
				}
			}
		},
		data() {
			return {
				obj_goods_type: {},
				obj: {},
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
				var res = await this.$get("~/api/daily_specials/get_obj", {
					daily_specials_id:this.query.daily_specials_id
				})

				if (res.result && res.result.obj) {
					this.obj = res.result.obj
				} else {
					console.log("没有请求到商品分类");
				}
			},
											},
		created() {
											},
		async onLoad(){
			if (Object.keys(this.obj_goods).length !== 0) {
				await this.get_obj_goods_type();
				await this.get_obj_by_goods();
			} else if (this.query["daily_specials_id"] !==0) {
				await this.get_obj_by_id();
			}
		}
	}
</script>

<style scoped>
	.div_daily_specials_details {}

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
