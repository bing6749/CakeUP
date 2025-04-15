<template>
  <view>
    <view class="container diy_view">
      <view>
        <view>
          <view class="">
            <uni-forms :modelValue="form"  v-if="is_view()">

              <uni-forms-item v-if="$check_field('get','product_name') || $check_field('add','product_name') || $check_field('set','product_name')" label="品名" name="product_name">
                                <uni-easyinput type="text" v-model="form['product_name']" v-if="user_group === '管理员' || (form['time_limited_second_kill_id'] && $check_field('set','product_name')) || (!form['time_limited_second_kill_id'] && $check_field('add','product_name'))" :disabled="disabledObj['product_name_isDisabled']" />
                <!-- 仅查看 -->
                <text v-else-if="$check_field('get','product_name')">
                  {{ form['product_name'] }}
                </text>
                            </uni-forms-item>
              <uni-forms-item v-if="$check_field('get','type') || $check_field('add','type') || $check_field('set','type')" label="类型" name="type">
                        <uni-data-select
                  v-model="form.type"
                  :localdata="list_type"
                  :clear="!disabledObj['type_isDisabled']"
                  :disabled="disabledObj['type_isDisabled']"
                  v-if="user_group === '管理员' || (form['time_limited_second_kill_id'] && $check_field('set','type')) || (!form['time_limited_second_kill_id'] && $check_field('add','type'))"
                ></uni-data-select>
                <!-- 仅查看 -->
                <text v-else-if="$check_field('get','type')">
                  {{ form['type'] }}
                </text>
                    </uni-forms-item>
              <uni-forms-item v-if="$check_field('get','specifications') || $check_field('add','specifications') || $check_field('set','specifications')" label="规格" name="specifications">
                                <uni-easyinput type="text" v-model="form['specifications']" v-if="user_group === '管理员' || (form['time_limited_second_kill_id'] && $check_field('set','specifications')) || (!form['time_limited_second_kill_id'] && $check_field('add','specifications'))" :disabled="disabledObj['specifications_isDisabled']" />
                <!-- 仅查看 -->
                <text v-else-if="$check_field('get','specifications')">
                  {{ form['specifications'] }}
                </text>
                            </uni-forms-item>
              <uni-forms-item v-if="$check_field('get','weight') || $check_field('add','weight') || $check_field('set','weight')" label="重量" name="weight">
                                <uni-easyinput type="text" v-model="form['weight']" v-if="user_group === '管理员' || (form['time_limited_second_kill_id'] && $check_field('set','weight')) || (!form['time_limited_second_kill_id'] && $check_field('add','weight'))" :disabled="disabledObj['weight_isDisabled']" />
                <!-- 仅查看 -->
                <text v-else-if="$check_field('get','weight')">
                  {{ form['weight'] }}
                </text>
                            </uni-forms-item>
              <uni-forms-item v-if="$check_field('get','flavor') || $check_field('add','flavor') || $check_field('set','flavor')" label="口味" name="flavor">
                                <uni-easyinput type="text" v-model="form['flavor']" v-if="user_group === '管理员' || (form['time_limited_second_kill_id'] && $check_field('set','flavor')) || (!form['time_limited_second_kill_id'] && $check_field('add','flavor'))" :disabled="disabledObj['flavor_isDisabled']" />
                <!-- 仅查看 -->
                <text v-else-if="$check_field('get','flavor')">
                  {{ form['flavor'] }}
                </text>
                            </uni-forms-item>
              <uni-forms-item v-if="$check_field('get','original_price') || $check_field('add','original_price') || $check_field('set','original_price')" label="原价" name="original_price">
                                <uni-easyinput type="text" v-model="form['original_price']" v-if="user_group === '管理员' || (form['time_limited_second_kill_id'] && $check_field('set','original_price')) || (!form['time_limited_second_kill_id'] && $check_field('add','original_price'))" :disabled="disabledObj['original_price_isDisabled']" />
                <!-- 仅查看 -->
                <text v-else-if="$check_field('get','original_price')">
                  {{ form['original_price'] }}
                </text>
                            </uni-forms-item>
              <uni-forms-item v-if="$check_field('get','price_spike') || $check_field('add','price_spike') || $check_field('set','price_spike')" label="秒杀价" name="price_spike">
                                <uni-easyinput type="text" v-model="form['price_spike']" v-if="user_group === '管理员' || (form['time_limited_second_kill_id'] && $check_field('set','price_spike')) || (!form['time_limited_second_kill_id'] && $check_field('add','price_spike'))" :disabled="disabledObj['price_spike_isDisabled']" />
                <!-- 仅查看 -->
                <text v-else-if="$check_field('get','price_spike')">
                  {{ form['price_spike'] }}
                </text>
                            </uni-forms-item>
              <uni-forms-item v-if="$check_field('get','quality_guarantee_period') || $check_field('add','quality_guarantee_period') || $check_field('set','quality_guarantee_period')" label="保质期" name="quality_guarantee_period">
                                <uni-easyinput type="text" v-model="form['quality_guarantee_period']" v-if="user_group === '管理员' || (form['time_limited_second_kill_id'] && $check_field('set','quality_guarantee_period')) || (!form['time_limited_second_kill_id'] && $check_field('add','quality_guarantee_period'))" :disabled="disabledObj['quality_guarantee_period_isDisabled']" />
                <!-- 仅查看 -->
                <text v-else-if="$check_field('get','quality_guarantee_period')">
                  {{ form['quality_guarantee_period'] }}
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

              <uni-forms-item label="计时器标题" name="timer_title">
                <uni-easyinput v-if="user_group === '管理员' || (form['time_limited_second_kill_id'] && $check_action('/time_limited_second_kill/view','set')) || (!form['time_limited_second_kill_id'] && $check_action('/time_limited_second_kill/view','add'))" v-model="form['timer_title']" type="text" :disabled="disabledObj['timer_title_isDisabled']" />
                <text v-else-if="$check_field('get','timer_title')">
                  {{ form['timer_title'] }}
                </text>
              </uni-forms-item>
              <uni-forms-item label="计时开始时间" name="timing_start_time">
                <uni-datetime-picker v-if="user_group === '管理员' || (form['time_limited_second_kill_id'] && $check_action('/time_limited_second_kill/view','set')) || (!form['time_limited_second_kill_id'] && $check_action('/time_limited_second_kill/view','add'))" @change="changeLog($event,'timing_start_time')" v-model="form['timing_start_time']" type="datetime" :disabled="disabledObj['timing_start_time_isDisabled']" />
                <text v-else-if="$check_field('get','timing_start_time')">
                  {{ form['timing_start_time'] }}
                </text>
              </uni-forms-item>
              <uni-forms-item label="计时结束时间" name="timing_end_time">
                <uni-datetime-picker v-if="user_group === '管理员' || (form['time_limited_second_kill_id'] && $check_action('/time_limited_second_kill/view','set')) || (!form['time_limited_second_kill_id'] && $check_action('/time_limited_second_kill/view','add'))" @change="changeLog($event,'timing_end_time')" v-model="form['timing_end_time']" type="datetime" :disabled="disabledObj['timing_end_time_isDisabled']" />
                <text v-else-if="$check_field('get','timing_end_time')">
                  {{ form['timing_end_time'] }}
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
      field: "time_limited_second_kill_id",
      url_add: "~/api/time_limited_second_kill/add?",
      url_set: "~/api/time_limited_second_kill/set?",
      url_get_obj: "~/api/time_limited_second_kill/get_obj?",
      url_upload: "~/api/time_limited_second_kill/upload?",

      query: {
        "time_limited_second_kill_id": 0,
      },

      form: {
            "product_name":  '', // 品名
                    "type":  '', // 类型
                    "specifications":  '', // 规格
                    "weight":  '', // 重量
                    "flavor":  '', // 口味
                    "original_price":  0 , // 原价
                    "price_spike":  0 , // 秒杀价
                    "quality_guarantee_period":  '', // 保质期
                    "picture":  '', // 图片
                                "time_limited_second_kill_id": 0, // ID
                "timer_title":'', // 计时器标题
            "timing_start_time":'', // 计时开始时间
            "timing_end_time":'', // 计时结束时间
                
              },
          disabledObj:{
                        "product_name_isDisabled": false,
                                "type_isDisabled": false,
                                "specifications_isDisabled": false,
                                "weight_isDisabled": false,
                                "flavor_isDisabled": false,
                                                                        "quality_guarantee_period_isDisabled": false,
                                "picture_isDisabled": false,
                            "timer_title_isDisabled": false, // 计时器标题
            "timing_start_time_isDisabled": false, // 计时开始时间
            "timing_end_time_isDisabled": false, // 计时结束时间
                      },
                                          // 类型选项列表
          list_type: [],
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
            url: _self.$fullUrl('/api/time_limited_second_kill/upload?'),
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
            url: _self.$fullUrl('/api/time_limited_second_kill/upload?'),
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
     * 获取类型列表
     */
    async get_list_type() {
              var json = await this.$get("~/api/commodity_type/get_list?");
      if(json.result && json.result.list){
        json.result.list.map((o) => this.list_type.push({value:o.type,text:o.type}));
      }
      else if(json.error){
        console.error(json.error);
      }
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
        bl = this.$check_action('/time_limited_second_kill/table','add');
        console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
      }
      if(!bl){
        bl = this.$check_action('/time_limited_second_kill/table','set');
        console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
      }
      if(!bl){
        bl = this.$check_action('/time_limited_second_kill/view','add');
        console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
      }
      if(!bl){
        bl = this.$check_action('/time_limited_second_kill/view','set');
        console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
      }
      if(!bl){
        bl = this.$check_action('/time_limited_second_kill/view','get');
        console.log(bl ? "你有视图查询权限视作有查询权限" : "你没有视图查询权限");
      }

      console.log(bl ? "具有当前页面的查看权，请注意这不代表你有字段的查看权" : "无权查看当前页，请注意即便有字段查询权限没有页面查询权限也不行");

      return bl;
    },

  },
  created() {
                this.get_list_type();
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
