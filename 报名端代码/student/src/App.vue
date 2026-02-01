<template>
  <div id="app">
    <top></top>
    <div class="l-container-wrap">
		<div class="l-sidemenu">
			<ul>
			
				<li>
					<router-link to="/bm1">
						<small>1</small>
						<span>考生注册</span>
					</router-link>
				</li>
				<li>
					<router-link to="/bm2">
						<small>2</small>
						<span>考生登录</span>
					</router-link>
				</li>
				<li>
					<router-link to="/bm3">
						<small>3</small>
						<span>考生报名</span>
					</router-link>
				</li>
				<li>
					<router-link to="/bm4">
						<small>4</small>
						<span>资格审核</span>
					</router-link>
				</li>
				
				<li>
					<router-link to="/bm5">
						<small>4</small>
						<span>打印准考证</span>
					</router-link>
				</li>
			</ul>
		</div>
		<div class="l-right-con">
			
      <router-view/>
		</div>
	</div>
    
    <foot></foot>
  </div>
</template>

<script>
import top from './components/top.vue'
import foot from './components/foot.vue'
export default {
  name: 'App',
  components:{
    top,
    foot
  }
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
