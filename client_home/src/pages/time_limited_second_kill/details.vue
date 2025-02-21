<template>
	<view class="page_time_limited_second_kill diy_detail diy_detail--new" id="time_limited_second_kill_details">
		<view class="warp">
			<view class="container-fluid">
				<view class="row">
					<view v-if="$check_field('get','product_name')" class="col-12 col-6">
						<view class="view">
							<view class="diy_title">
								<span>品名</span>
							</view>
								<view class="diy_field diy_text">
								<span>
									{{ obj["product_name"] }}
								</span>
							</view>
							</view>
					</view>
					<view v-if="$check_field('get','type')" class="col-12 col-6">
						<view class="view">
							<view class="diy_title">
								<span>类型</span>
							</view>
								<view class="diy_field diy_text">
								<span>
									{{ obj["type"] }}
								</span>
							</view>
							</view>
					</view>
					<view v-if="$check_field('get','specifications')" class="col-12 col-6">
						<view class="view">
							<view class="diy_title">
								<span>规格</span>
							</view>
								<view class="diy_field diy_text">
								<span>
									{{ obj["specifications"] }}
								</span>
							</view>
							</view>
					</view>
					<view v-if="$check_field('get','weight')" class="col-12 col-6">
						<view class="view">
							<view class="diy_title">
								<span>重量</span>
							</view>
								<view class="diy_field diy_text">
								<span>
									{{ obj["weight"] }}
								</span>
							</view>
							</view>
					</view>
					<view v-if="$check_field('get','flavor')" class="col-12 col-6">
						<view class="view">
							<view class="diy_title">
								<span>口味</span>
							</view>
								<view class="diy_field diy_text">
								<span>
									{{ obj["flavor"] }}
								</span>
							</view>
							</view>
					</view>
					<view v-if="$check_field('get','original_price')" class="col-12 col-6">
						<view class="view">
							<view class="diy_title">
								<span>原价</span>
							</view>
								<view class="diy_field diy_number">
								<span>
									{{ obj["original_price"] }}
								</span>
							</view>
							</view>
					</view>
					<view v-if="$check_field('get','price_spike')" class="col-12 col-6">
						<view class="view">
							<view class="diy_title">
								<span>秒杀价</span>
							</view>
								<view class="diy_field diy_number">
								<span>
									{{ obj["price_spike"] }}
								</span>
							</view>
							</view>
					</view>
					<view v-if="$check_field('get','quality_guarantee_period')" class="col-12 col-6">
						<view class="view">
							<view class="diy_title">
								<span>保质期</span>
							</view>
								<view class="diy_field diy_text">
								<span>
									{{ obj["quality_guarantee_period"] }}
								</span>
							</view>
							</view>
					</view>
					<view v-if="$check_field('get','picture')" class="col-12 col-6">
						<view class="view">
							<view class="diy_title">
								<span>图片</span>
							</view>
								<view class="diy_field diy_img">
								<img :src="$fullUrl(obj['picture'])" />
							</view>
							</view>
					</view>
				</view>
			</view>
		</view>

	<div class='warp' v-if='timeTypeShow'>
		<div class='container-fluid'>
			<div class='row'>
				<div class='col'>
					<div class='time_type'>
							<span>
								{{ obj['timer_title'] }}
							</span>
						<div>
							<span>{{ timer_start_day }}</span>天
							<span>{{ timer_start_hour }}</span>小时
							<span>{{ timer_start_min }}</span>分
							<span>{{ timer_start_sec }}</span>秒
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



		<view class="warp">
			<view class="container-fluid container-fluid-comment--new">
				<view class="row">
					<view class="col">
									<button type="button" class="btn btn-primary" v-if="$check_action('/second_kill_order/edit','add')" @click="to_form('/pages/second_kill_order/edit')">
							<span>秒杀</span>
						</button>
			
<!--						<button type="button" class="btn btn-primary" @click="cancel()">返回</button>-->





					</view>
				</view>
			</view>
		</view>


	</view>
</template>

<script>
	import list_comment from "@/components/diy/list_comment.vue";
	import bar_title from "@/components/diy/bar_title.vue";
	import form_editor from "@/components/diy/form_editor.vue";

	import mixin from "@/libs/mixins/page.js";
	export default {
		mixins: [mixin],
		components: {
			list_comment,
			bar_title,
			form_editor
		},
		data() {
			return {
				url_get_obj: "~/api/time_limited_second_kill/get_obj?",
				field: "time_limited_second_kill_id",
				query: {
					"time_limited_second_kill_id": 0
				},
				// 商品详情初始化
				obj: {
						"product_name": "",
							"type": "",
							"specifications": "",
							"weight": "",
							"flavor": "",
							"original_price": 0,
							"price_spike": 0,
							"quality_guarantee_period": "",
							"picture": "",
						"time_limited_second_kill_id": 0,
					"timer_title":'', // 计时器标题
					"timing_start_time":'', // 计时开始时间
					"timing_end_time":'', // 计时结束时间

				},
				// 点赞
				praise: 0,
				// 点赞状态
				state_praise: false,
				// 收藏
				collect: 0,
				// 收藏状态
				state_collect: false,
				// 评论列表初始化
				list_comment: [],
				// 评论bar标题
				bar_title: "评论区",
				// 评论bar的链接
				bar_url: "",
				timeTypeShow: true,
													timer_start_day:0,
				timer_start_hour:0,
				timer_start_min:0,
				timer_start_sec:0,
			}
		},
		methods: {





			/**
			 * 获取对象之后
			 * @param {Object} json 结果对象
			 */
			get_obj_after(json) {
				// 判断是否获取到数据
				if (this.obj) {
					var obj = this.obj;
					this.runTiming();
				}
			},

			/**
			 * 倒计时
			 */
			// oDiv(el) {
			// 	if(typeof(el) == 'string') {
			// 		return(document.getElementById(el));
			// 	}
			// 	return(el);
			// },

			fillZero(num, digit) {
				var str = '' + num;
				if(str.length < digit) {
					str = '0' + str;
				}
				return str;
			},
			runTiming() {
				var timer = null;
				var _this = this;
				timer = setInterval(updateTime, 1000);
				updateTime();

				function updateTime() {
					var oEndDate = _this.obj.timing_end_time;
					var seart = _this.obj.timing_start_time;
					if (oEndDate.indexOf("-") != -1) {
						oEndDate = new Date(oEndDate).getTime();
					}
					if (seart.indexOf("-") != -1) {
						seart = new Date(seart).getTime();
					}
					var oNowDate = new Date();
					var iRemain = 0
					iRemain = parseInt((oNowDate.getTime() - seart) / 1000);
					if (iRemain <= 0) { //判断开始时间是否小于或等于今天
						clearInterval(timer);
						iRemain = 0;
						_this.timeTypeShow = false;
					} else {
						iRemain = parseInt((oEndDate - oNowDate.getTime()) / 1000);
						if (iRemain <= 0) { //判断结束时间是否小于或等于今天
							clearInterval(timer);
							iRemain = 0;
							_this.timeTypeShow = false;
						} else {
							_this.timeTypeShow = true;
							var iDay = parseInt(iRemain / 86400); //剩余天数

							iRemain %= 86400;
							var iHour = parseInt(iRemain / 3600); //剩余小时

							iRemain %= 3600;
							var iMin = parseInt(iRemain / 60); //剩余分钟

							iRemain %= 60;
							var iSec = iRemain; //剩余秒

							_this.timer_start_day = _this.fillZero(iDay, 2);
							_this.timer_start_hour = _this.fillZero(iHour, 2);
							_this.timer_start_min = _this.fillZero(iMin, 2);
							_this.timer_start_sec = _this.fillZero(iSec, 2);
						}
					}
				}
			},
											},
		created() {
											},
		mounted() {
		},
	}

</script>

<style>
	.page_goods {
		padding-bottom: 3rem;
	}

	.link {
		text-align: center;
		padding: 0.5rem 0;
		border: 1px solid #DBDBDB;
		border-radius: 0.5rem;
	}

	.buy_wrap {
		position: fixed;
		bottom: 0;
		left: 0;
		width: 100%;
	}

	.dialog {
		width: 100%;
		height: 100vh;
		background: rgba(0, 0, 0, 0.5);
		z-index: 999;
		position: fixed;
		left: 0;
		top: 0;
		padding: 20vh 0;
	}

	.dialog-content {
		width: 500upx;
		height: 60vh;
		margin: 0 auto;
		background: #FFF;
		border-radius: 10upx;
		overflow: hidden;
		position: relative;
		display: flex;
		flex-direction: column;
		padding:  5vh;
		text-align: center;

	}
	.dialog-content span{
		margin-top:  3vh;
		}

	.dialog-close {
		width: 40upx;
		height: 40upx;
		border-radius: 20upx;
		position: absolute;
		right: 10upx;
		top: 10upx;
		font-size: 26upx;
		line-height: 40upx;
		text-align: center;
	}

	.dialog-list {
		padding: 40upx 20upx;
	}

	scroll-view {
		width: 100%;
		height: 100%;
	}

	.show-dialog {
		animation: 100ms showDialog linear forwards;
	}

	.hide-dialog {
		animation: 100ms hideDialog linear forwards;
	}

	@keyframes hideDialog {
		0% {
			opacity: 1;
		}


		100% {
			opacity: 0;
		}
	}

	@keyframes showDialog {
		0% {
			opacity: 0;
		}


		100% {
			opacity: 1;
		}
	}

	/* new style start */
	.diy_detail--new{
		padding: 5px;
	}
	.diy_detail--new .view {
		border-bottom: 1px solid #ccc;
		padding: 8px 0 ;
	}
	.diy_detail--new .view uni-view{
		display: inline-block;
	}
	.diy_detail--new .view .diy_title{
		color: var(--color_primary);
		margin-right: 5px;
		vertical-align: top;
	}
	.diy_detail--new .view .diy_img img{
		width: 100%;
	}
	.diy_detail--new .view .diy_music{
		vertical-align: text-top;
	}
	.diy_detail--new .bar_title{
		position: relative;
		background-color: #fff;
		display: flex;
		justify-content: space-between;
		align-items: center;
		margin-bottom: 2px;
		background: var(--color_primary);
		border-radius: 10px;
		height: 46px;
	}
	.diy_detail--new .bar_title .title{
		margin: 0 auto;
		color: var(--color_white);
		font-weight: 600;
	}
	.diy_detail--new .container-fluid-comment--new{
		margin: 10px 0.6rem;
	}
	.diy_detail--new .container-fluid-comment--new .col{
		display: flex;
		flex: auto;
		flex-wrap: wrap;
		flex-direction: row;
		margin-left: -10px;
	}
	.diy_detail--new .container-fluid-comment--new .btn{
		display: inline-block;
		border: none;
		background: var(--color_primary);
		color: #fff;
		font-size: 16px !important;
		padding: 2px 12px !important;
		border-radius: 20px;
		line-height: inherit;
		margin-bottom: 5px;
		margin-left: 10px;
		margin-right: 0;
	}
	.diy_detail--new .container-fluid-comment--new .btn:after{
		display: none;
	}
	.diy_detail--new .container-fluid-comment--new .btn .uni-icons{
		color: #fff !important;
	}
	.diy_detail--new .comment_title{
		margin-top: 10px;
	}
	/* new style end */

</style>
