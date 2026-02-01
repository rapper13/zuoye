<template>
    <div class="b-step-con step4-con">
				<h2 class="b-right-con-tit">
					<strong>资格审核</strong>
				</h2>
				<div class="b-feedback by">
					<span class="b-g b-iconbox">
						<i class="iconfont icon-tongguo"></i>
					</span>
					<h6>审核通过</h6>
					
				</div>
				<div class="b-feedback pass">
					<span class="b-o b-iconbox">
						<i class="iconfont icon-weitongguo"></i>
					</span>
					<h6>审核未通过</h6>
					<p> 您所上传的信息填写不准确，请重新核对后输入<a href="">考生报名&gt;&gt; </a></p>
				</div>
				<div class="b-feedback wait">
					<span class="b-b b-iconbox">
						<i class="iconfont icon-pingjundengdaishichang"></i>
					</span>
					<h6>待审核</h6>
					<p>系统将在<span>3月26日-4月12日</span>进行审核，请耐心等待审核......</p>
				</div>
			</div>
</template>

<script>
export default {
    name: 'bm4',
    data() {
        return {
            msg: 'demo'
        }
    }
}
</script>