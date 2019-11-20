<template>
  <div class="home">
        测试webhook是否可以检测前端代码到代码更新
          <ul>
            <li v-for="(item,index) in users" :key="index">
              {{item.name}}
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
   axios.get('http://47.99.192.199:3000/api/users')
   .then(res=>{
     console.log(res)
     this.users = res.data
   })
 }
}
</script>
