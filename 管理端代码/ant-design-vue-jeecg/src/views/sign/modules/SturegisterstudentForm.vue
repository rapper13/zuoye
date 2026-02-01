<template>
  <a-spin :spinning="confirmLoading">
    <j-form-container :disabled="formDisabled">
      <a-form-model ref="form" :model="model" :rules="validatorRules" slot="detail">
        <a-row>
          <a-col :span="24">
            <a-form-model-item label="照片" :labelCol="labelCol" :wrapperCol="wrapperCol" prop="photo">
              <j-image-upload isMultiple  v-model="model.photo" ></j-image-upload>
            </a-form-model-item>
          </a-col>
          <a-col :span="24">
            <a-form-model-item label="考生姓名" :labelCol="labelCol" :wrapperCol="wrapperCol" prop="name">
              <a-input v-model="model.name" placeholder="请输入考生姓名"  ></a-input>
            </a-form-model-item>
          </a-col>
          <a-col :span="24">
            <a-form-model-item label="性别" :labelCol="labelCol" :wrapperCol="wrapperCol" prop="sex">
              <j-dict-select-tag type="list" v-model="model.sex" dictCode="sex" placeholder="请选择性别" />
            </a-form-model-item>
          </a-col>
          <a-col :span="24">
            <a-form-model-item label="民族" :labelCol="labelCol" :wrapperCol="wrapperCol" prop="nation">
              <j-dict-select-tag type="list" v-model="model.nation" dictCode="mz" placeholder="请选择民族" />
            </a-form-model-item>
          </a-col>
          <a-col :span="24">
            <a-form-model-item label="身份证号" :labelCol="labelCol" :wrapperCol="wrapperCol" prop="idnumber">
              <a-input v-model="model.idnumber" placeholder="请输入身份证号"  ></a-input>
            </a-form-model-item>
          </a-col>
          <a-col :span="24">
            <a-form-model-item label="职业名称" :labelCol="labelCol" :wrapperCol="wrapperCol" prop="professionname">
              <a-input v-model="model.professionname" placeholder="请输入职业名称"  ></a-input>
            </a-form-model-item>
          </a-col>
          <a-col :span="24">
            <a-form-model-item label="移动电话" :labelCol="labelCol" :wrapperCol="wrapperCol" prop="phone">
              <a-input v-model="model.phone" placeholder="请输入移动电话"  ></a-input>
            </a-form-model-item>
          </a-col>
          <a-col :span="24">
            <a-form-model-item label="工作单位" :labelCol="labelCol" :wrapperCol="wrapperCol" prop="company">
              <j-dict-select-tag type="list" v-model="model.company" dictCode="work_unt,name,id" placeholder="请选择工作单位" />
            </a-form-model-item>
          </a-col>
          <a-col :span="24">
            <a-form-model-item label="现居住地" :labelCol="labelCol" :wrapperCol="wrapperCol" prop="currentaddress">
             <j-area-linkage type="cascader" v-model="model.currentaddress" placeholder="请输入省市区"  />
            </a-form-model-item>
          </a-col>
          <a-col :span="24">
            <a-form-model-item label="户籍所在地" :labelCol="labelCol" :wrapperCol="wrapperCol" prop="placeofdomicile">
             <j-area-linkage type="cascader" v-model="model.placeofdomicile" placeholder="请输入省市区"  />
            </a-form-model-item>
          </a-col>
          <a-col :span="24">
            <a-form-model-item label="备注" :labelCol="labelCol" :wrapperCol="wrapperCol" prop="remark1">
              <j-editor v-model="model.remark1" />
            </a-form-model-item>
          </a-col>
        </a-row>
      </a-form-model>
    </j-form-container>
  </a-spin>
</template>

<script>

  import { httpAction, getAction } from '@/api/manage'
  import { validateDuplicateValue } from '@/utils/util'

  export default {
    name: 'SturegisterstudentForm',
    components: {
    },
    props: {
      //表单禁用
      disabled: {
        type: Boolean,
        default: false,
        required: false
      }
    },
    data () {
      return {
        model:{
         },
        labelCol: {
          xs: { span: 24 },
          sm: { span: 5 },
        },
        wrapperCol: {
          xs: { span: 24 },
          sm: { span: 16 },
        },
        confirmLoading: false,
        validatorRules: {
           sex: [
              { required: true, message: '请输入性别!'},
           ],
           nation: [
              { required: true, message: '请输入民族!'},
           ],
           idnumber: [
              { required: false},
              { validator: (rule, value, callback) => validateDuplicateValue('sturegisterstudent', 'idnumber', value, this.model.id, callback)},
           ],
           phone: [
              { required: false},
              { pattern: /^1[3456789]\d{9}$/, message: '请输入正确的手机号码!'},
           ],
        },
        url: {
          add: "/sign/sturegisterstudent/add",
          edit: "/sign/sturegisterstudent/edit",
          queryById: "/sign/sturegisterstudent/queryById"
        }
      }
    },
    computed: {
      formDisabled(){
        return this.disabled
      },
    },
    created () {
       //备份model原始值
      this.modelDefault = JSON.parse(JSON.stringify(this.model));
    },
    methods: {
      add () {
        this.edit(this.modelDefault);
      },
      edit (record) {
        this.model = Object.assign({}, record);
        this.visible = true;
      },
      submitForm () {
        const that = this;
        // 触发表单验证
        this.$refs.form.validate(valid => {
          if (valid) {
            that.confirmLoading = true;
            let httpurl = '';
            let method = '';
            if(!this.model.id){
              httpurl+=this.url.add;
              method = 'post';
            }else{
              httpurl+=this.url.edit;
               method = 'put';
            }
            httpAction(httpurl,this.model,method).then((res)=>{
              if(res.success){
                that.$message.success(res.message);
                that.$emit('ok');
              }else{
                that.$message.warning(res.message);
              }
            }).finally(() => {
              that.confirmLoading = false;
            })
          }
         
        })
      },
    }
  }
</script>