<template>
	<view class="list_commodity_type list_com--new" style="background-color: #fff;">
		<!-- 视图 -->
		<view class="commodity_type_block box_wrap" >
			<navigator class="item_commodity_type box_style" v-for="(o, i) in list"  :key="i" :url="'/pages/commodity_type/details?commodity_type_id=' + o['commodity_type_id']">
					<view class="view" v-if="0 && $check_index_field('get','type','/commodity_type/list')">
					<view class="title" v-if="true">
						<span>类型</span>
					</view>
							<view class="diy_field text" >
						<span>{{ o["type"] }}</span>
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
				}
		},
		methods: {
			/**
			 *  跳转链接
			 *  @param {Object} id
			 */
			to_nav(id) {
				this.$nav('/pages/commodity_type/details?commodity_type_id=' + id)
			},
			},
		created() {
			}
	}
</script>

<style scoped>
	.list_commodity_type {
		/* padding: 0 1rem; */
		margin-bottom: 1rem;
	}

	.list_commodity_type .list_commodity_type_table {
		width: 100%;
		padding: 5px 0;
	}

	.list_commodity_type .list_commodity_type_table .btn_change_table {
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

	.list_commodity_type .list_commodity_type_table .commodity_type_table_block .uni-table-td{
		padding: 8px;
	}

	.list_commodity_type .list_commodity_type_table .commodity_type_table_block .image {
		width: 10%;
	}

	.list_commodity_type .list_commodity_type_table .commodity_type_table_block .text {
		overflow: hidden;
		width: 30%;
		font-size: 0.5rem;
	}

	.list_commodity_type .list_commodity_type_table .commodity_type_table_block .hits {
		width: 12%;
		font-size: 0.5rem;
	}

	.list_commodity_type .list_commodity_type_table .commodity_type_table_block .praise {
		width: 12%;
		font-size: 0.5rem;
	}

	.list_commodity_type .list_commodity_type_table .commodity_type_table_block .create_time {
		width: 26%;
		font-size: 0.5rem;
	}
	.list_commodity_type .item_commodity_type {
		display: flex;
		justify-content: space-between;
		align-items: stretch;
		padding: 0.75rem 1rem;

	}
	.list_commodity_type .item_commodity_type+.item_commodity_type{
		border-top: 1px solid #dbdbdb;
	}
	.list_commodity_type .item_commodity_type .left>image {
		position: relative;
		top: 50%;
		transform: translate(0, -50%);
		border-radius: 0.5rem;
	}

	.list_commodity_type .item_commodity_type .right_block {
		width: calc(100% - 5rem);
		display: flex;
		flex-direction: column;
		justify-content: space-between;
	}

	.list_commodity_type .top {
		font-size: 0.9rem;
	}


	.list_commodity_type .time {
		font-size: 0.6rem;
		color: var(--color_grey)
	}

	.list_commodity_type .bottom {
		display: flex;
		justify-content: space-between;
		align-items: baseline;
		font-size: 0.5rem;
		color: var(--color_grey)
	}

	.list_commodity_type .see {
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

