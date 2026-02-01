<template>
    <div class="b-step-con step2-con">
				<h2 class="b-right-con-tit">
					<strong>注册报名</strong>
				</h2>
				<form action="" method="post">
					<div class="b-input-group">
						<div class="label">
							<small>*</small>姓名：</div>
						<div>
							<input type="text" placeholder="请输入您的姓名">
						</div>
					</div>
					<div class="b-input-group">
						<div class="label">
							<small>*</small>密码：</div>
						<div>
							<input type="password" placeholder="请输入密码">
						</div>
					</div>
					<div class="b-input-group">
						<div class="label">
							<small>*</small>确认密码：</div>
						<div>
							<input type="password" placeholder="请输入密码">
						</div>
					</div>
					<div class="b-input-group">
						<div class="label">
							<small>*</small>身份证号：</div>
						<div>
							<input type="text" placeholder="请输入您的身份证号">
						</div>
					</div>
					<div class="b-input-group">
						<div class="label">
							<small>*</small>验证码：</div>
						<div class="testing-input">
							<input type="text" placeholder="请输入验证码">
						</div>
						<div class="testing">
							<img :src="img" alt="">
						</div>
					</div>
					<p class="guider">请填写提示问题，这将确保您能够正常的找回密码</p>
					<div class="b-input-group">
						<div class="label">
							<small>*</small>父亲姓名：</div>
						<div>
							<input type="text" placeholder="请输入您父亲姓名">
						</div>
					</div>
					<div class="b-input-group">
						<div class="label">
							<small>*</small>母亲姓名：</div>
						<div>
							<input type="text" placeholder="请输入您母亲姓名">
						</div>
					</div>
					<div class="b-input-group">
						<div class="label">
							<small>*</small>曾经去过的地方：</div>
						<div>
							<input type="text" placeholder="请输入您曾经去过的地方">
						</div>
					</div>
					<div class="b-input-group">
						<div class="label">
							<small>*</small>家乡在里：</div>
						<div>
							<input type="text" placeholder="请输入您的家乡">
						</div>
					</div>
					<div class="b-btn-wrap">
						<input class="b-btn" type="submit" value="注册">
					</div>
				</form>
			</div>
</template>

<script>
//import axios from 'axios'
export default {
    name: 'bm1',
    data() {
        return {
            msg: 'demo',
			img: 'data:image/jpg;base64,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'
        }
    }
}
</script>