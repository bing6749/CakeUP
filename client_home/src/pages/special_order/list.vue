<template>
	<view class="page_special_order diy_list diy_list_page div_list_tml" id="special_order_list">
		<!-- 筛选模块(开始) -->
		<view>
			<view class="container">
				<view>
					<view>
						<view class="">
							<!-- 搜索栏 -->
													<uni-search-bar placeholder="搜索订单编号" @confirm="search" @cancel="cancel" cancelText="取消"
											@input="input($event, 'order_no')">
								<uni-icons slot="searchIcon" color="#999999" size="18" type="home" />
							</uni-search-bar>
																			<uni-search-bar placeholder="搜索品名" @confirm="search" @cancel="cancel" cancelText="取消"
											@input="input($event, 'product_name')">
								<uni-icons slot="searchIcon" color="#999999" size="18" type="home" />
							</uni-search-bar>
																			<uni-search-bar placeholder="搜索类型" @confirm="search" @cancel="cancel" cancelText="取消"
											@input="input($event, 'type')">
								<uni-icons slot="searchIcon" color="#999999" size="18" type="home" />
							</uni-search-bar>
																							<!-- /搜索栏 -->
						</view>
					</view>
				</view>

				<view>
					<view>
						<view class="tab_view">
							<!-- 筛选栏 -->
																													<!-- /筛选栏 -->
						</view>
					</view>
				</view>

				<view>
					<view>
						<view class="sort_view">
							<!-- 排序 -->
							<view class="list_orderby">
								<bar_orderby :text="o.name" v-model:direction="o.direction"
											 v-for="(o,i) in list_orderby" :key="i" @handle="handleOrderby">
								</bar_orderby>
							</view>
							<!-- /排序 -->
						</view>
					</view>
				</view>
			</view>
		</view>
		<!-- 筛选模块(结束) -->
		<!-- 列表 -->
			<view class="warp" >
			<view class="container">
				<view v-for="(o,i) in list" class="row box_style">
							<view class="col" v-if="1 && $check_field('get','order_no')">
						<view class="view">
							<view class="diy_title" v-if="true">
								<span>订单编号</span>
							</view>
										<view class="diy_field diy_text">
								<span>
									{{ o["order_no"] }}
								</span>
							</view>
									</view>
					</view>
							<view class="col" v-if="1 && $check_field('get','product_name')">
						<view class="view">
							<view class="diy_title" v-if="true">
								<span>品名</span>
							</view>
										<view class="diy_field diy_text">
								<span>
									{{ o["product_name"] }}
								</span>
							</view>
									</view>
					</view>
							<view class="col" v-if="0 && $check_field('get','type')">
						<view class="view">
							<view class="diy_title" v-if="true">
								<span>类型</span>
							</view>
										<view class="diy_field diy_text">
								<span>
									{{ o["type"] }}
								</span>
							</view>
									</view>
					</view>
							<view class="col" v-if="0 && $check_field('get','specifications')">
						<view class="view">
							<view class="diy_title" v-if="true">
								<span>规格</span>
							</view>
										<view class="diy_field diy_text">
								<span>
									{{ o["specifications"] }}
								</span>
							</view>
									</view>
					</view>
							<view class="col" v-if="0 && $check_field('get','weight')">
						<view class="view">
							<view class="diy_title" v-if="true">
								<span>重量</span>
							</view>
										<view class="diy_field diy_text">
								<span>
									{{ o["weight"] }}
								</span>
							</view>
									</view>
					</view>
							<view class="col" v-if="0 && $check_field('get','flavor')">
						<view class="view">
							<view class="diy_title" v-if="true">
								<span>口味</span>
							</view>
										<view class="diy_field diy_text">
								<span>
									{{ o["flavor"] }}
								</span>
							</view>
									</view>
					</view>
							<view class="col" v-if="1 && $check_field('get','current_special_price')">
						<view class="view">
							<view class="diy_title" v-if="true">
								<span>现特价</span>
							</view>
										<view class="diy_field diy_text">
								<span>
									{{ o["current_special_price"] }}
								</span>
							</view>
									</view>
					</view>
							<view class="col" v-if="1 && $check_field('get','picture')">
						<view class="view">
							<view class="diy_title" v-if=" false">
								<span>图片</span>
							</view>
										<view class="diy_field diy_img">
								<img :src="$fullUrl(o['picture'])" width="100%" height="100" />
							</view>
									</view>
					</view>
							<view class="col" v-if="0 && $check_field('get','user_no')">
						<view class="view">
							<view class="diy_title" v-if="true">
								<span>用户编号</span>
							</view>
										<view class="diy_field diy_uid">
								<span>
									{{ get_user_user_no(o['user_no']) }}
								</span>
							</view>
									</view>
					</view>
							<view class="col" v-if="0 && $check_field('get','user_name')">
						<view class="view">
							<view class="diy_title" v-if="true">
								<span>用户姓名</span>
							</view>
										<view class="diy_field diy_text">
								<span>
									{{ o["user_name"] }}
								</span>
							</view>
									</view>
					</view>
							<view class="col" v-if="0 && $check_field('get','picking_type')">
						<view class="view">
							<view class="diy_title" v-if="true">
								<span>取货类型</span>
							</view>
										<view class="diy_field diy_text">
								<span>
									{{ o["picking_type"] }}
								</span>
							</view>
									</view>
					</view>
							<view class="col" v-if="0 && $check_field('get','contact_number')">
						<view class="view">
							<view class="diy_title" v-if="true">
								<span>联系电话</span>
							</view>
										<view class="diy_field diy_text">
								<span>
									{{ o["contact_number"] }}
								</span>
							</view>
									</view>
					</view>
							<view class="col" v-if="0 && $check_field('get','address')">
						<view class="view">
							<view class="diy_title" v-if="true">
								<span>地址</span>
							</view>
										<view class="diy_field diy_text">
								<span>
									{{ o["address"] }}
								</span>
							</view>
									</view>
					</view>
							<view class="bottom-view">
									</view>
					<view class="col">
						<view class="view">
							<view class="create_time_block diy_filed diy_time">
								{{ $toTime(o["create_time"] ,"yyyy-MM-dd hh:mm:ss") }}

							</view>
						</view>
					</view>
					<view class="uni-padding-wrap uni-common-mt">
						<navigator :url="'./details?special_order_id=' + o['special_order_id']" class="btn btn-primary">查看详情</navigator>

					</view>
				</view>
			</view>
		</view>
			<!-- /列表 -->
		<!-- 分页器 -->
		<uni-pagination
				class="pager"
				show-icon="true"
				:total="count"
				:pageSize="query.size"
				:current="query.page"
				@change="page_change"
		></uni-pagination>
		<!-- /分页器 -->
	</view>
</template>

<script>
	import list_tab from "@/components/diy/list_tab.vue";
	import bar_orderby from "@/components/diy/bar_orderby.vue";
    import mixin from "@/libs/mixins/page.js";


	export default {
		mixins: [mixin],
		components: {
			list_tab,
			bar_orderby
		},
		data() {
			return {
				url_get_list: "~/api/special_order/get_list?like=0",
																							// 用户列表
					list_user_user_no: [],
										// 取货类型选项列表
				list_picking_type: [{value:"全部",text:"全部"}],
						
					list_orderby: [
																	{
					name: '发布时间',
					direction: "",
					command_asc: '`create_time` asc',
					command_desc: '`create_time` desc'
				}
			],
					query: {
									"order_no": "", // 订单编号
												"product_name": "", // 品名
												"type": "", // 类型
																			"special_order_id": 0, // ID
						"page": 1,
						"size": 10
			},
			list: [],
					count: 50,
		}
		},
		methods: {



				
						
						
			
			
			
			
			
			
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
				
			
		/**
	 * 获取取货类型列表
	 */
	async get_list_picking_type() {
					['到店自取','外送到家'].map((o) => this.list_picking_type.push({value:o,text:o}));
					},
			
			
		
	input(e, key) {
		this.query[key] = e.value;
	},

	search() {
		this.query.page = 1;
		this.get_list();
	},

	// 改变分类标签
	changeScreen(idx,key) {
		if (this.query[key] === "全部") {
			this.query[key] = "";
		}
		this.search()
	},

	// 控制排序
	handleOrderby(o) {
		// console.log(o);
		// 取出对应的orderby

		// 重置其他排序的direction
		this.list_orderby.map(val => {
			if (val.name !== o.text) {
				return val.direction = ""
			}
		})

		// 找到对应的排序项，发送排序请求
		var obj_orderby = this.list_orderby.find(val => val.name === o.text)
		if (o.direction === "") {
			this.query.orderby = ""
			this.search()
		} else if (o.direction === "up") {
			this.query.orderby = obj_orderby.command_desc
			this.search()
		} else if (o.direction === "down") {
			this.query.orderby = obj_orderby.command_asc
			this.search()
		}
	},

	/**
	 * 跳转地址
	 * @param {Object} id
	 */
	to_nav(id) {
		this.$nav('/pages/special_order/details?special_order_id=' + id)
	},


	},
	created() {
																				this.get_list_user_user_no();
								// 初始化取货类型列表
		this.get_list_picking_type();
							}
	}
</script>
<style scoped>
.container {
  box-shadow: none;
  -webkit-box-shadow: none;
}
.pager {
  margin-top: 1rem;
}
.uni-collapse {
  background-color: inherit;
}

.pager {
  margin-top: 1rem;
}

.tab_view {
  /* background-color: #ffffff; */
  margin: 0 auto;
}

.list_orderby {
  display: flex;
  justify-content: flex-start;
  /* background-color: #ffffff; */
  /* border-top: 5px double #ccc;
		border-bottom: 5px double #ccc; */
  margin-right: -1px;
}

.list_orderby .bar_orderby {
  border-left: 1px solid #ccc;
}
.change_table {
  height: 50px;
  margin: 0 var(--margin_base);
}
.btn_change_table {
  margin-left: auto;
  font-weight: bold;
  width: 100px;
  height: 37px;
  text-align: center;
  font-size: 0.875rem;
  border: 1px solid #cccccc;
  border-radius: 1rem;
  margin: 0.25rem;
  float: right;
}
.end-title {
  display: flex;
}
.end-title view {
  flex-grow: 1;
  text-align: center;
}
.end-cont {
  display: none;
  /* background: #c8c7cc; */
}
.btna {
  color: #ffffff;
  background: #00a0ff;
}
.dis {
  display: block;
}
.box_style {
  width: 44%;
  margin-bottom: 0.75rem;
  padding: 0.375rem;
  display: inline-block !important;
  border: 0.075rem solid #ccc;
  border-radius: 0.375rem;
  overflow: hidden;
}
.box_style:nth-child(even) {
  margin-left: 0.6rem;
}
.box_style:nth-child(even) {
  margin-left: 0.6rem;
}
.bottom-view,
.create_time_block {
  font-size: 12px;
  color: #666666;
}
.bottom-view view {
  display: inline-block;
}
.bottom-view span {
  margin-left: 5px;
  margin-right: 10px;
}
</style>
<style>
/* 新加样式 */
.uni-searchbar {
  background-color: #22b8b8;
}
.search_div .uni-searchbar .uni-searchbar__box {
  border-radius: 8px !important;
  height: auto;
}

.tab_view {
  margin: 8px auto;
  font-size: 14px;
}
.list_orderby {
  margin: 1rem;
}
.list_orderby .bar_orderby {
  margin-right: 0.5rem;
  border-left: 1px solid #ccc;
  background-color: #22b8b8;
  border-radius: 10px;
  padding: 5px;
}
.sort_view .bar_orderby .text {
  color: #fff;
}
/* 列表样式 */
.dis {
  width: 50%;
  display: inline-block;
}
.end-cont .warp .container {
  font-family: Arial, Helvetica, sans-serif;
  border: 2px solid #22b8b8;
  padding: 5px;
  /* margin-top: 10px; */
  border-radius: 8px;
  margin: 10px 5px 0 5px;
  font-size: 14px;
}
.col {
  padding: 5px;
}
.end-cont .warp .container .diy_img img {
  width: 100%;
  height: 100px;
  padding: 5px 0;
}
.diy_dj {
  display: inline-block;
  width: 50%;
}
.uni-common-mt {
  width: 100%;
}
.uni-common-mt .btn {
  font-size: 14px;
  color: #fff;
  background-color: #22b8b8;
  line-height: 2;
  margin-bottom: 8px;
  display: inline-block;
	  width: 100%;
	  text-align: center;
}
.diy_text{
	padding-left: 10px;
	 color:#22b8b8;
	 text-decoration: dashed;
}
.uni-common-mt .btn{
	display: inline-block;
	  width: 100%;
	  text-align: center;
}
.container {
  padding: 8px 0s;
}
.delete_btn{
	display: inline-block;
	padding-left: 8px;
	color: #22B8B8;
	text-decoration: underline;
}
</style>
