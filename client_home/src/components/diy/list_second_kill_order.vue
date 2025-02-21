<template>
	<view class="list_second_kill_order list_com--new" style="background-color: #fff;">
		<!-- 视图 -->
		<view class="second_kill_order_block box_wrap" >
			<navigator class="item_second_kill_order box_style" v-for="(o, i) in list"  :key="i" :url="'/pages/second_kill_order/details?second_kill_order_id=' + o['second_kill_order_id']">
					<view class="view" v-if="1 && $check_index_field('get','order_no','/second_kill_order/list')">
					<view class="title" v-if="true">
						<span>订单编号</span>
					</view>
							<view class="diy_field text" >
						<span>{{ o["order_no"] }}</span>
					</view>
						</view>
						<view class="view" v-if="1 && $check_index_field('get','product_name','/second_kill_order/list')">
					<view class="title" v-if="true">
						<span>品名</span>
					</view>
							<view class="diy_field text" >
						<span>{{ o["product_name"] }}</span>
					</view>
						</view>
						<view class="view" v-if="0 && $check_index_field('get','type','/second_kill_order/list')">
					<view class="title" v-if="true">
						<span>类型</span>
					</view>
							<view class="diy_field text" >
						<span>{{ o["type"] }}</span>
					</view>
						</view>
						<view class="view" v-if="0 && $check_index_field('get','specifications','/second_kill_order/list')">
					<view class="title" v-if="true">
						<span>规格</span>
					</view>
							<view class="diy_field text" >
						<span>{{ o["specifications"] }}</span>
					</view>
						</view>
						<view class="view" v-if="0 && $check_index_field('get','weight','/second_kill_order/list')">
					<view class="title" v-if="true">
						<span>重量</span>
					</view>
							<view class="diy_field text" >
						<span>{{ o["weight"] }}</span>
					</view>
						</view>
						<view class="view" v-if="0 && $check_index_field('get','flavor','/second_kill_order/list')">
					<view class="title" v-if="true">
						<span>口味</span>
					</view>
							<view class="diy_field text" >
						<span>{{ o["flavor"] }}</span>
					</view>
						</view>
						<view class="view" v-if="1 && $check_index_field('get','price_spike','/second_kill_order/list')">
					<view class="title" v-if="true">
						<span>秒杀价</span>
					</view>
							<view class="diy_field text" >
						<span>{{ o["price_spike"] }}</span>
					</view>
						</view>
						<view class="view" v-if="1 && $check_index_field('get','picture','/second_kill_order/list')">
					<view class="title" v-if=" false">
						<span>图片</span>
					</view>
							<view class="diy_field image" >
						<image style="width:100%;height: 5rem;" :src="$fullUrl(o['picture']) || '/static/img/default.png'" mode="scaleToFill" />
					</view>
						</view>
						<view class="view" v-if="0 && $check_index_field('get','user_no','/second_kill_order/list')">
					<view class="title" v-if="true">
						<span>用户编号</span>
					</view>
							<view class="diy_field time" >
						<span>{{ get_user_user_no(o['user_no']) }}</span>
					</view>
						</view>
						<view class="view" v-if="0 && $check_index_field('get','user_name','/second_kill_order/list')">
					<view class="title" v-if="true">
						<span>用户姓名</span>
					</view>
							<view class="diy_field text" >
						<span>{{ o["user_name"] }}</span>
					</view>
						</view>
						<view class="view" v-if="0 && $check_index_field('get','picking_type','/second_kill_order/list')">
					<view class="title" v-if="true">
						<span>取货类型</span>
					</view>
							<view class="diy_field text" >
						<span>{{ o["picking_type"] }}</span>
					</view>
						</view>
						<view class="view" v-if="0 && $check_index_field('get','contact_number','/second_kill_order/list')">
					<view class="title" v-if="true">
						<span>联系电话</span>
					</view>
							<view class="diy_field text" >
						<span>{{ o["contact_number"] }}</span>
					</view>
						</view>
						<view class="view" v-if="0 && $check_index_field('get','address','/second_kill_order/list')">
					<view class="title" v-if="true">
						<span>地址</span>
					</view>
							<view class="diy_field text" >
						<span>{{ o["address"] }}</span>
					</view>
						</view>
					<view class="bottom-view">
				</view>
				<view class="view">
					<view class="create_time_block diy_field number">
						<span>{{ $toTime(o["create_time"],"yyyy-MM-dd hh:mm:ss") }}</span>
					</view>
				</view>
			</navigator>
		</view>
		<!-- /视图 -->
	</view>
</template>

<script>
	export default {
		props: {
			list: {
				type: Array,
				default: function() {
					return [];
				}
			}
		},
		data() {
			return {
													// 用户列表
				list_user_user_no: [],
								}
		},
		methods: {
			/**
			 *  跳转链接
			 *  @param {Object} id
			 */
			to_nav(id) {
				this.$nav('/pages/second_kill_order/details?second_kill_order_id=' + id)
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
							}
	}
</script>

<style scoped>
	.list_second_kill_order {
		/* padding: 0 1rem; */
		margin-bottom: 1rem;
	}

	.list_second_kill_order .list_second_kill_order_table {
		width: 100%;
		padding: 5px 0;
	}

	.list_second_kill_order .list_second_kill_order_table .btn_change_table {
		margin-left: auto;
		font-weight: bold;
		padding: 0.5rem 0;
		width: 100px;
		text-align: center;
		font-size: 0.875rem;
		border: 1px solid #CCCCCC;
		border-radius: 1rem;
		margin-bottom: 0.25rem;
	}

	.list_second_kill_order .list_second_kill_order_table .second_kill_order_table_block .uni-table-td{
		padding: 8px;
	}

	.list_second_kill_order .list_second_kill_order_table .second_kill_order_table_block .image {
		width: 10%;
	}

	.list_second_kill_order .list_second_kill_order_table .second_kill_order_table_block .text {
		overflow: hidden;
		width: 30%;
		font-size: 0.5rem;
	}

	.list_second_kill_order .list_second_kill_order_table .second_kill_order_table_block .hits {
		width: 12%;
		font-size: 0.5rem;
	}

	.list_second_kill_order .list_second_kill_order_table .second_kill_order_table_block .praise {
		width: 12%;
		font-size: 0.5rem;
	}

	.list_second_kill_order .list_second_kill_order_table .second_kill_order_table_block .create_time {
		width: 26%;
		font-size: 0.5rem;
	}
	.list_second_kill_order .item_second_kill_order {
		display: flex;
		justify-content: space-between;
		align-items: stretch;
		padding: 0.75rem 1rem;

	}
	.list_second_kill_order .item_second_kill_order+.item_second_kill_order{
		border-top: 1px solid #dbdbdb;
	}
	.list_second_kill_order .item_second_kill_order .left>image {
		position: relative;
		top: 50%;
		transform: translate(0, -50%);
		border-radius: 0.5rem;
	}

	.list_second_kill_order .item_second_kill_order .right_block {
		width: calc(100% - 5rem);
		display: flex;
		flex-direction: column;
		justify-content: space-between;
	}

	.list_second_kill_order .top {
		font-size: 0.9rem;
	}


	.list_second_kill_order .time {
		font-size: 0.6rem;
		color: var(--color_grey)
	}

	.list_second_kill_order .bottom {
		display: flex;
		justify-content: space-between;
		align-items: baseline;
		font-size: 0.5rem;
		color: var(--color_grey)
	}

	.list_second_kill_order .see {
		margin-left: 1rem;
	}
	.box_wrap{
		padding: 0.75rem;
	}
	.box_style{
		margin-bottom: 0.75rem;
		padding: 0.375rem;
		display: inline-block !important;
		border: 0.075rem solid #ccc;
		border-radius: 0.375rem;
		overflow: hidden;
	}
	.box_style:nth-child(even){
		margin-left: 0.60rem;
	}
	.box_style:nth-child(even){
		margin-left: 0.60rem;
	}
	.bottom-view,.create_time_block{
		font-size: 12px;
		color: #666666;
	}
	.bottom-view view{
		display: inline-block;
	}
	.bottom-view span{
		margin-left: 5px;
		margin-right: 10px;
	}
/* new style start */
	.list_com--new .box_wrap{
		display: flex;
		flex-wrap: wrap;
		padding-left: 0 !important;
		padding-right: 0 !important;
		justify-content: space-between;
	}
	.list_com--new .box_style:nth-child(even) {
    	margin-left: 0 !important;
	}
    .list_com--new .box_wrap .box_style{
		display: inline-block !important;
		width: 48%;
		max-width: 48%;
		overflow: hidden;
		border-color: var(--color_primary);
		box-sizing: border-box;
		padding:8px!important;
    }
    .list_com--new .view{
        display: flex;
        overflow: hidden;
		width:100%;
    }

    .list_com--new .view .title span{
       white-space: nowrap;
    }
    .list_com--new .view .text{
        display: flex;
        color: var(--color_primary);
        margin-left: 10px;
        border-bottom: 1px solid #ccc;
        white-space: nowrap;
    }
     .list_com--new .view .text span{
        max-width: 100px;
        overflow: hidden;
        text-overflow: ellipsis;
    }

     .list_com--new .view .number{
        color: var(--color_primary);
    }

    .list_com--new .view .image{
        width: 100%;
        border-bottom: 1px solid #ccc;
		margin-top:5px;
    }

	.list_com--new .diy_field.text{
		overflow: hidden;
		margin-right: -8px;
	}

/* new style start */

</style>

