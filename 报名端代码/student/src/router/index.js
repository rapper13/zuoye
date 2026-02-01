import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'
import demo from '@/components/demo'
import bm1 from '@/page/bm1'
import bm2 from '@/page/bm2'
import bm3 from '@/page/bm3'
import bm4 from '@/page/bm4'
import bm5 from '@/page/bm5'


Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'bm1',
      component: bm1
    },
    {
      path: '/demo',
      name: 'demo',
      component: demo
    },
    {
      path: '/bm1',
      name: 'bm1',
      component: bm1
    }
    ,
    {
      path: '/bm2',
      name: 'bm2',
      component: bm3
    }
    ,
    {
      path: '/bm3',
      name: 'bm3',
      component: bm3
    }
    ,
    {
      path: '/bm4',
      name: 'bm4',
      component: bm4
    }
    ,
    {
      path: '/bm5',
      name: 'bm5',
      component: bm5
    }
  ]
})
