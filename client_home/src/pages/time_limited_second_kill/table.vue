<template>
  <view class="page_time_limited_second_kill diy_table diy_table_tml" id="time_limited_second_kill_table">
    <!-- 筛选模块(开始) -->
    <view>
      <view class="container">
        <view>
          <view>
            <view class="">
              <!-- 搜索栏 -->
              <uni-forms :modelValue="query">
                  <uni-forms-item label="品名" name="product_name">
                      <uni-easyinput type="text" v-model="query.product_name" placeholder="品名" />
                    </uni-forms-item>
                    <uni-forms-item label="类型" name="type">
                  <uni-data-select placeholder="请选择"
            v-model="query['type']"
            :localdata="list_type"
        ></uni-data-select>
                         </uni-forms-item>
                              </uni-forms>
              <!-- /搜索栏 -->
              <view class="table_padding_bottom">
                <button class="btn_right" size="mini" @click="reset()" style="margin-left: 10px;margin-right: 15px">重置</button>
                <button class="btn_right" size="mini" type="primary" @click="search()">查询</button>
                <div class="clear"></div>
              </view>
            </view>
          </view>
        </view>
      </view>
    </view>

    <view>
      <view class="container">
        <view>
          <view>
            <view class="table_padding_top">
              <navigator class="nav_left" url="/pages/time_limited_second_kill/view?" v-show="user_group == '管理员' || $check_action('/time_limited_second_kill/table','add') || $check_action('/time_limited_second_kill/view','add')">添加</navigator>

              <div class="clear"></div>
            </view>
		<!-- 列表 -->
		<view class="warp">
			<view class="container">
				<view v-for="(o,i) in list" class="row">
										<view v-if="1 && $check_field('get','product_name')" class="col">
						<view class="view">
                          <view class="diy_title" v-if="true">
                            <span>品名</span>
                          </view>
											<view class="diy_field diy_text text">
								<text>
									{{ o["product_name"] }}
								</text>
							</view>
										</view>
					</view>
													<view v-if="0 && $check_field('get','type')" class="col">
						<view class="view">
                          <view class="diy_title" v-if="true">
                            <span>类型</span>
                          </view>
											<view class="diy_field diy_text text">
								<text>
									{{ o["type"] }}
								</text>
							</view>
										</view>
					</view>
													<view v-if="0 && $check_field('get','specifications')" class="col">
						<view class="view">
                          <view class="diy_title" v-if="true">
                            <span>规格</span>
                          </view>
											<view class="diy_field diy_text text">
								<text>
									{{ o["specifications"] }}
								</text>
							</view>
										</view>
					</view>
													<view v-if="0 && $check_field('get','weight')" class="col">
						<view class="view">
                          <view class="diy_title" v-if="true">
                            <span>重量</span>
                          </view>
											<view class="diy_field diy_text text">
								<text>
									{{ o["weight"] }}
								</text>
							</view>
										</view>
					</view>
													<view v-if="0 && $check_field('get','flavor')" class="col">
						<view class="view">
                          <view class="diy_title" v-if="true">
                            <span>口味</span>
                          </view>
											<view class="diy_field diy_text text">
								<text>
									{{ o["flavor"] }}
								</text>
							</view>
										</view>
					</view>
													<view v-if="1 && $check_field('get','original_price')" class="col">
						<view class="view">
                          <view class="diy_title" v-if="true">
                            <span>原价</span>
                          </view>
											<div class="diy_field diy_number text">
								<text>
									{{ o['original_price'] }}
								</text>
							</div>
										</view>
					</view>
													<view v-if="1 && $check_field('get','price_spike')" class="col">
						<view class="view">
                          <view class="diy_title" v-if="true">
                            <span>秒杀价</span>
                          </view>
											<div class="diy_field diy_number text">
								<text>
									{{ o['price_spike'] }}
								</text>
							</div>
										</view>
					</view>
													<view v-if="0 && $check_field('get','quality_guarantee_period')" class="col">
						<view class="view">
                          <view class="diy_title" v-if="true">
                            <span>保质期</span>
                          </view>
											<view class="diy_field diy_text text">
								<text>
									{{ o["quality_guarantee_period"] }}
								</text>
							</view>
										</view>
					</view>
													<view v-if="1 && $check_field('get','picture')" class="col">
						<view class="view">
                          <view class="diy_title" v-if=" false">
                            <span>图片</span>
                          </view>
											<view class="diy_field diy_img">
								<img :src="$fullUrl(o['picture'])" />
							</view>
										</view>
					</view>
					                  <view class="bottom-view">
                                                              </view>
                  <view class="col">
                    <view class="view">
                      <view class="create_time_block diy_filed diy_time">
                        {{ $toTime(o["create_time"] ,"yyyy-MM-dd hh:mm:ss") }}
                        <button class="delete_a_btn" @click="delInfo(i)" v-show="user_group == '管理员' || $check_action('/time_limited_second_kill/table','del') || $check_action('/time_limited_second_kill/view','del')">删除</button>
                      </view>
                    </view>
                  </view>
					<view class="uni-padding-wrap uni-common-mt">
					<navigator  :url="'/pages/time_limited_second_kill/view?' + field + '=' + o[field]"
                               v-show="user_group == '管理员' || $check_action('/time_limited_second_kill/table','set') || $check_action('/time_limited_second_kill/view','set') || $check_action('/time_limited_second_kill/view','get')" class="btn btn-primary">详情</navigator>
	                                <!--跨表按钮-->
                                <a type="button" size="mini" class="btn btn-primary" v-if="$check_action('/second_kill_order/view','add')" @click="to_form('/pages/second_kill_order/view',o)">
                      <span>秒杀</span>
                    </a>
                        					</view>
				</view>
			</view>
		</view>
		<!-- /列表 -->
          </view>
        </view>
      </view>
    </view>
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
	import mixin from "@/libs/mixins/page.js";

	export default {
		mixins: [mixin],
		data() {
			return {
				// 获取数据地址
				url_get_list: "~/api/time_limited_second_kill/get_list?like=0",
				url_del: "~/api/time_limited_second_kill/del?",

				// 字段ID
				field: "time_limited_second_kill_id",

				// 查询
				query: {
					"size": 7,
					"page": 1,
                          "product_name": "",
                                "type": "",
                    					"login_time": "",
					"create_time": "",
				},

				// 数据
				list: [],
                            // 类型列表
                list_type: [{value:"",text:"全部"}],
                                                                			}
		},
		methods: {
          search() {
            this.query.page = 1;
            this.get_list();
          },
          /**
           * 重置
           */
          reset: function reset() {
            uni.clear(this.query);
            uni.push(this.query, this.config);
            this.get_list();
          },
          delInfo(v) {
            let _this = this;
            uni.showModal({
              title: '删除',
              content: '此操作将永久删除该文件, 是否继续?',
              success: function (res) {
                if (res.confirm) {
                  let list = [v]
                  _this.delAll(list);
                } else if (res.cancel) {
                  console.log('用户点击取消');
                }
              }
            });
          },
                          /**
           * 获取类型列表
           */
          async get_list_type() {
                              var json = await this.$get("~/api/commodity_type/get_list?");
            if(json.result){
              json.result.list.map((o) => this.list_type.push({value:o.type,text:o.type}));
            }else if (json.error){
              console.log(json.error);
            }
                  },
                                                                                                		},
		created() {
                      // 初始化类型列表
          this.get_list_type();
                                                                		}
	}
</script>

<style scoped type="text/css">
  .pay_model{
    width:100%;
    height: 100%;
    background:rgba(0,0,0,.3);
    position: fixed;
    top:0;
    left:0;
    z-index:90;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
  }
  .pay_model .mask{
    width:100%;
    height: 100%;
    position: absolute;
    top:0;
    left:0;
    z-index:1;
  }
  .pay_model .pay_model_inn{
    background:#fff;
    box-shadow: 0 0.25rem 0.5rem 0 #ddd;
    width:80%;
    padding:20rpx;
    position: relative;
    z-index:10;
    border-radius: 10rpx;
  }
  .pay_model .pay_model_inn .pay_tab{
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: center;
  }
  .pay_model .pay_model_inn .pay_tab_one{
    width:29.3%;
    padding:10px 2%;
    text-align: center;
    border-bottom:2px solid #fff;
  }
  .pay_model .pay_model_inn .pay_tab_one_act{
    border-bottom:2px solid #0000FF;
    color:#0000FF;
  }

  .pay_model .inclued_pay_image{
    width:100%;
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: center;
    margin:20px 0;
  }
  .pay_model .inclued_pay_image .pay_image{
    width:80%;
    border-radius: 10rpx;

  }
  .clear {
    margin: 0;
    padding: 0;
    left: 0;
    right: 0;
    clear: both;
  }

  .btn_right{
    float: right;
  }

  .btn_left{
    float: left;
  }

  .nav_left{
    float: left;
    display: inline-block;
    line-height: 2.3;
    font-size: 13px;
    padding: 0 1.34em;
    color: #fff;
    background-color: #007aff;
    box-sizing: border-box;
    border-radius: 5px;
  }

  .table_padding_top{
    padding-top: 10px;
  }

  .table_margin_top{
    margin-top: 10px;
  }

  .table_padding_bottom{
    padding-bottom: 10px;
  }

  .nav{
    display: inline-block;
    line-height: 2.3;
    font-size: 13px;
    padding: 0 1.34em;
    color: #fff;
    background-color: #007aff;
    box-sizing: border-box;
    border-radius: 5px;
  }
  .uni-forms--top {
    padding: 0px 15px;
  // padding-top: 22px;
  }

  .uni-forms-item[data-v-39373d84] {
    margin-bottom: 10px;
  }
  .query_select{
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

  .query_option{
    width: 100%;
  }
</style>
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
.warp .container .diy_title {
  display: inline-block;
}
.warp .container .text {
  display: inline-block;
  color: var(--color_primary);
  margin-left: 10px;
}
</style>
