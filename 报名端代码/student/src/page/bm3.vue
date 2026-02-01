<template>
    <div class="b-step-con step3-con">
				<h2 class="b-right-con-tit">
					<strong>考生报名</strong>
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
							<small>*</small>性别：</div>
						<div>
							<label for="male">
								<input type="radio" name="sex" id="male">男
							</label>
							<label for="female">
								<input type="radio" name="sex" id="female">女
							</label>
						</div>
					</div>
					<div class="b-input-group">
						<div class="label">
							<small>*</small>名族：</div>
						<div>
							<select name="" id="">
								<option value="" disabled="">请选择名族</option>
								<option value="">汉族</option>
								<option value="">回族</option>
								<option value="">苗族</option>
							</select>
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
							<small>*</small>邮政编码：</div>
						<div>
							<input type="text" placeholder="请输入邮政编码">
						</div>
					</div>
					<div class="b-input-group">
						<div class="label">
							<small>*</small>职业：</div>
						<div>
							<input type="text" placeholder="请输入你的职业">
						</div>
					</div>
					<div class="b-input-group">
						<div class="label">
							<small>*</small>移动电话：</div>
						<div>
							<input type="text" placeholder="请输入你的移动电话">
						</div>
					</div>
					

					<div class="b-input-group">
						<div class="label">
							<small>*</small>工作单位：</div>
						<div>
							<input type="text" placeholder="请输入你的工作单位">
						</div>
					</div>
					<div class="b-input-group">
						<div class="label">
							<small>*</small>通信地址：</div>
						<div>
							<input type="text" placeholder="请输入你的通信地址">
						</div>
					</div>
					<div class="b-input-group">
						<div class="label">
							<small>*</small>户籍所在地：</div>
						<div>
							<input type="text" placeholder="请输入你的户籍所在地">
						</div>
					</div>
					<div class="b-btn-wrap">
						<input class="b-btn" type="submit" value="报名">
					</div>
				</form>
			</div>
</template>

<script>
export default {
    name: 'bm3',
    data() {
        return {
            msg: 'demo'
        }
    }
}
</script>