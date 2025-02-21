<template>
  <view>
    <view class="container diy_view">
      <view>
        <view>
          <view class="">
            <uni-forms :modelValue="form"  v-if="is_view()">

              <uni-forms-item v-if="$check_field('get','order_no') || $check_field('add','order_no') || $check_field('set','order_no')" label="订单编号" name="order_no">
                                <uni-easyinput type="text" v-model="form['order_no']" v-if="user_group === '管理员' || (form['special_order_id'] && $check_field('set','order_no')) || (!form['special_order_id'] && $check_field('add','order_no'))"  :disabled="true" />
                <!-- 仅查看 -->
                <text v-else-if="$check_field('get','order_no')">
                  {{ form['order_no'] }}
                </text>
                            </uni-forms-item>
              <uni-forms-item v-if="$check_field('get','product_name') || $check_field('add','product_name') || $check_field('set','product_name')" label="品名" name="product_name">
                                <uni-easyinput type="text" v-model="form['product_name']" v-if="user_group === '管理员' || (form['special_order_id'] && $check_field('set','product_name')) || (!form['special_order_id'] && $check_field('add','product_name'))" :disabled="disabledObj['product_name_isDisabled']" />
                <!-- 仅查看 -->
                <text v-else-if="$check_field('get','product_name')">
                  {{ form['product_name'] }}
                </text>
                            </uni-forms-item>
              <uni-forms-item v-if="$check_field('get','type') || $check_field('add','type') || $check_field('set','type')" label="类型" name="type">
                                <uni-easyinput type="text" v-model="form['type']" v-if="user_group === '管理员' || (form['special_order_id'] && $check_field('set','type')) || (!form['special_order_id'] && $check_field('add','type'))" :disabled="disabledObj['type_isDisabled']" />
                <!-- 仅查看 -->
                <text v-else-if="$check_field('get','type')">
                  {{ form['type'] }}
                </text>
                            </uni-forms-item>
              <uni-forms-item v-if="$check_field('get','specifications') || $check_field('add','specifications') || $check_field('set','specifications')" label="规格" name="specifications">
                                <uni-easyinput type="text" v-model="form['specifications']" v-if="user_group === '管理员' || (form['special_order_id'] && $check_field('set','specifications')) || (!form['special_order_id'] && $check_field('add','specifications'))" :disabled="disabledObj['specifications_isDisabled']" />
                <!-- 仅查看 -->
                <text v-else-if="$check_field('get','specifications')">
                  {{ form['specifications'] }}
                </text>
                            </uni-forms-item>
              <uni-forms-item v-if="$check_field('get','weight') || $check_field('add','weight') || $check_field('set','weight')" label="重量" name="weight">
                                <uni-easyinput type="text" v-model="form['weight']" v-if="user_group === '管理员' || (form['special_order_id'] && $check_field('set','weight')) || (!form['special_order_id'] && $check_field('add','weight'))" :disabled="disabledObj['weight_isDisabled']" />
                <!-- 仅查看 -->
                <text v-else-if="$check_field('get','weight')">
                  {{ form['weight'] }}
                </text>
                            </uni-forms-item>
              <uni-forms-item v-if="$check_field('get','flavor') || $check_field('add','flavor') || $check_field('set','flavor')" label="口味" name="flavor">
                                <uni-easyinput type="text" v-model="form['flavor']" v-if="user_group === '管理员' || (form['special_order_id'] && $check_field('set','flavor')) || (!form['special_order_id'] && $check_field('add','flavor'))" :disabled="disabledObj['flavor_isDisabled']" />
                <!-- 仅查看 -->
                <text v-else-if="$check_field('get','flavor')">
                  {{ form['flavor'] }}
                </text>
                            </uni-forms-item>
              <uni-forms-item v-if="$check_field('get','current_special_price') || $check_field('add','current_special_price') || $check_field('set','current_special_price')" label="现特价" name="current_special_price">
                                <uni-easyinput type="text" v-model="form['current_special_price']" v-if="user_group === '管理员' || (form['special_order_id'] && $check_field('set','current_special_price')) || (!form['special_order_id'] && $check_field('add','current_special_price'))" :disabled="disabledObj['current_special_price_isDisabled']" />
                <!-- 仅查看 -->
                <text v-else-if="$check_field('get','current_special_price')">
                  {{ form['current_special_price'] }}
                </text>
                            </uni-forms-item>
              <uni-forms-item v-if="$check_field('get','picture') || $check_field('add','picture') || $check_field('set','picture')" label="图片" name="picture">
                        <!-- 修改权限 -->
                <view class="diy_field diy_img" v-if="form['picture'] && $check_field('set','picture')">
                  <image v-if="disabledObj['picture_isDisabled']" :src="$fullUrl(form['picture'])" />
                  <image v-if="!disabledObj['picture_isDisabled']" :src="$fullUrl(form['picture'])" @click="change_img('picture')" />
                </view>
                <!-- 添加权限 -->
                <view class="diy_field diy_img" v-else-if="!form['picture'] && $check_field('add','picture')">
                  <view v-if="disabledObj['picture_isDisabled']" class="btn_add_img">
                    <text>+</text>
                  </view>
                  <view v-if="!disabledObj['picture_isDisabled']" class="btn_add_img" @click="change_img('picture')">
                    <text>+</text>
                  </view>
                </view>
                <!-- 查询权限 -->
                <view class="diy_field diy_img" v-else-if="$check_field('get','picture')">
                  <image :src="$fullUrl(form['picture'])" />
                </view>
                    </uni-forms-item>
              <uni-forms-item v-if="$check_field('get','user_no') || $check_field('add','user_no') || $check_field('set','user_no')" label="用户编号" name="user_no">
                        <uni-data-select
                  id="form_user_no"
                  v-model="form['user_no']"
                  :localdata="list_user_user_no"
                  :clear="!disabledObj['user_no_isDisabled']"
                  :disabled="disabledObj['user_no_isDisabled']"
                  v-if="user_group === '管理员' || (form['special_order_id'] && $check_field('set','user_no')) || (!form['special_order_id'] && $check_field('add','user_no'))"
                ></uni-data-select>
                <uni-data-select
                  v-model="form['user_no']"
                  :localdata="list_user_user_no"
                  :clear="false"
                  :disabled="true"
                  v-else-if="$check_field('get','user_no')" id="user_no"
                ></uni-data-select>
                    </uni-forms-item>
              <uni-forms-item v-if="$check_field('get','user_name') || $check_field('add','user_name') || $check_field('set','user_name')" label="用户姓名" name="user_name">
                                <uni-easyinput type="text" v-model="form['user_name']" v-if="user_group === '管理员' || (form['special_order_id'] && $check_field('set','user_name')) || (!form['special_order_id'] && $check_field('add','user_name'))" :disabled="disabledObj['user_name_isDisabled']" />
                <!-- 仅查看 -->
                <text v-else-if="$check_field('get','user_name')">
                  {{ form['user_name'] }}
                </text>
                            </uni-forms-item>
              <uni-forms-item v-if="$check_field('get','picking_type') || $check_field('add','picking_type') || $check_field('set','picking_type')" label="取货类型" name="picking_type">
                        <uni-data-select
                  v-model="form.picking_type"
                  :localdata="list_picking_type"
                  :clear="!disabledObj['picking_type_isDisabled']"
                  :disabled="disabledObj['picking_type_isDisabled']"
                  v-if="user_group === '管理员' || (form['special_order_id'] && $check_field('set','picking_type')) || (!form['special_order_id'] && $check_field('add','picking_type'))"
                ></uni-data-select>
                <!-- 仅查看 -->
                <text v-else-if="$check_field('get','picking_type')">
                  {{ form['picking_type'] }}
                </text>
                    </uni-forms-item>
              <uni-forms-item v-if="$check_field('get','contact_number') || $check_field('add','contact_number') || $check_field('set','contact_number')" label="联系电话" name="contact_number">
                        <uni-easyinput type="number" v-model="form['contact_number']" v-if="user_group === '管理员' || (form['special_order_id'] && $check_field('set','contact_number')) || (!form['special_order_id'] && $check_field('add','contact_number'))" :disabled="disabledObj['contact_number_isDisabled']" />
                <!-- 仅查看 -->
                <text v-else-if="$check_field('get','contact_number')">
                  {{ form['contact_number'] }}
                </text>
                    </uni-forms-item>
              <uni-forms-item v-if="$check_field('get','address') || $check_field('add','address') || $check_field('set','address')" label="地址" name="address">
                                <uni-easyinput type="text" v-model="form['address']" v-if="user_group === '管理员' || (form['special_order_id'] && $check_field('set','address')) || (!form['special_order_id'] && $check_field('add','address'))" :disabled="disabledObj['address_isDisabled']" />
                <!-- 仅查看 -->
                <text v-else-if="$check_field('get','address')">
                  {{ form['address'] }}
                </text>
                            </uni-forms-item>


            </uni-forms>
            <view class="form_button">
              <button size="mini" type="primary" @click="submit()" class="primary_btn">提交</button>
              <button size="mini" @click="cancel()">取消</button>
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
          list_picking_type: [],
                                                                              }
  },
  methods: {
    changeLog(v,value){
      this.form[value] = v
    },
    /**
     * 上传文件
     * @param {Object} param文件参数
     */
    change_file(key_name){
      var _self = this;
      // 选择图像方法
      uni.chooseFile({
        count: 1,
        sizeType: ['original', 'compressed'], //可以指定是原图还是压缩图，默认二者都有
        sourceType: ['album'], //从相册选择
        success: function(res) {
          const tempFilePaths = res.tempFilePaths;
          const uploadTask = uni.uploadFile({
            url: _self.$fullUrl('/api/special_order/upload?'),
            filePath: tempFilePaths[0],
            name: 'file',
            formData: {
              'i_want_to_customize': 'test'
            },
            header: {
              'x-auth-token': _self.$store.state.user.token
            },
            success: function(uploadFileRes) {
              var filename = JSON.parse(uploadFileRes.data).result.url
              _self.form[key_name] = filename
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
     * 上传图片
     * @param {Object} param文件参数
     */
    change_img(key_name){
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
            url: _self.$fullUrl('/api/special_order/upload?'),
            filePath: tempFilePaths[0],
            name: 'file',
            formData: {
              'i_want_to_customize': 'test'
            },
            header: {
              'x-auth-token': _self.$store.state.user.token
            },
            success: function(uploadFileRes) {
              var filename = JSON.parse(uploadFileRes.data).result.url
              _self.form[key_name] = filename
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
            /**
     * 获取系统用户用户组
     */
    async get_group_user_user_no() {
      this.form["user_no"] = this.user.user_id;
      var json = await this.$get("~/api/user_group/get_obj?name=系统用户");
      if(json.result && json.result.obj){
        this.group_user_user_no = json.result.obj;
        this.get_user_session_user_no(this.form['user_no'])
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
            
            
            /**
     * 获取取货类型列表
     */
    async get_list_picking_type() {
          ['到店自取','外送到家'].map((o) => this.list_picking_type.push({value:o,text:o}));
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

  },
  created() {
                                                                            this.get_list_user_user_no();
            this.get_group_user_user_no();
                            this.get_list_picking_type();
                          },
}
</script>

<style scoped>
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

.form_button{
  padding-bottom: 15px;
  display: flex;
}
.form_button button{
  width: 40%;
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
.avatar-uploader .el-upload {
  border: 1px dashed #d9d9d9;
  border-radius: 6px;
  cursor: pointer;
  position: relative;
  overflow: hidden;
}

.avatar-uploader .el-upload:hover {
  border-color: #409eff;
}

.form_button {
  padding-bottom: 15px;
  display: flex;
}
.form_button button {
  width: 40%;
}
.query_select {
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
  outline: none;
}

.query_option {
  width: 100%;
}

.btn_add_img {
  color: #d3d3d3;
  text-align: center;
  border: 1px solid #eee;
  height: 5rem;
  width: 5rem;
  position: relative;
}
.btn_add_img text {
  font-size: 35px;
  position: absolute;
  left: 50%;
  top: 50%;
  transform: translate(-50%, -50%);
}
/*新样式*/
.uni-forms{
padding-top:1rem;
}
.uni-forms-item {
	padding: 6px 10px;
    background: #f8f6fc;
}
.uni-forms .is-input-border{
	border: 0;
}
.container{
	    -webkit-box-shadow: 0px 0px 0px #888888;
	    box-shadow: 0px 0px 0px #888888;
}
.form_button .primary_btn{
		background-color: #22B8B8;
		color: #FFFFFF;
	}
</style>
