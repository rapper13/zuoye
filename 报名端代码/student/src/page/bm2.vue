<template>
    <div class="b-step-con step2-con">
        <h2 class="b-right-con-tit">
            <strong>登录</strong>
        </h2>
        <form @submit.prevent="login">
            <div class="b-input-group">
                <div class="label">
                    <small>*</small>身份证号码：
                </div>
                <div>
                    <input type="text" v-model="reg_data.username" placeholder="请输入您的姓名">
                </div>
            </div>
            <div class="b-input-group">
                <div class="label">
                    <small>*</small>密码：
                </div>
                <div>
                    <input type="password" v-model="reg_data.password" placeholder="请输入密码">
                </div>
            </div>
            <div class="b-input-group">
                <div class="label">
                    <small>*</small>确认密码：
                </div>
                <div>
                    <input type="password" placeholder="请输入密码">
                </div>
            </div>

            <div class="b-input-group">
                <div class="label">
                    <small>*</small>验证码：
                </div>
                <div class="testing-input">
                    <input type="text" v-model="reg_data.captcha" placeholder="请输入验证码">
                </div>
                <div class="testing">
                    <img :src="reg_data.img" @click="getCode" alt="">
                </div>
            </div>
            <div class="b-btn-wrap">
                <input class="b-btn" type="submit" value="登录">
            </div>
        </form>
    </div>
</template>

<script>
import axios from "axios";
export default {
    name: 'bm2',
    data() {
        return {
            reg_data: {
                captcha: '',
                checkKey: 'sign',
                password: '',
                username: '',
                img: ''
            }
        }
    },
    mounted() {
        this.getCode()
    },
    methods: {
        getCode() {
            axios.get('http://localhost:8080/jeecg-boot/sys/randomImage/' + this.reg_data.checkKey).then((res) => {
                console.log(res)
                this.reg_data.img = res.data.result
                console.log(res.data.message)
            })
        },
        login() {
            console.log(this.reg_data)
            axios.post('http://localhost:8080/jeecg-boot/sys/login', this.reg_data).then((res) => {
                console.log(res)
                if (res.data.success) {
                    let token = res.data.result.token
                    localStorage.setItem('token', token)
                }
            })
        }
    }
}
</script>