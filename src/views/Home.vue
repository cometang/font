<template>
  <div class="home">
        测试pm2+webhook是否检测前端代码代码更新
          <ul>
            <li v-for="(item,index) in users" :key="index">
              {{item.id}} --:---{{item.name}}
            </li>
          </ul>
    </div>
</template>

<script>
import axios from 'axios'
export default {
  name: 'home',
 data(){
   return{
     users:[]
   }
 },
 methods:{

 },
 mounted(){
   axios.get('/api/users')
   .then(res=>{
     this.users = res.data
   })
 }
}
</script>
