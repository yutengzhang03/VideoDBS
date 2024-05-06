
<template>  
  <div>  
    <h2 style="color: white;">🏆Ranking</h2>  
    <p style="color: white; font-size: 20px">  
      Here are the top videos based on the number of views.  
    </p>  
    <div style="display: flex; align-items: baseline;">  
      <p style="color: black; margin-right: 10px;">Top</p>  
      <select v-model="selectedCount" style="margin-right: 10px;">  
        <option value="5" style="color: darkgray;">5</option>  
        <option value="10" style="color: darkgray;">10</option>  
        <option value="20" style="color: darkgray;">20</option>  
      </select>  
      <p style="color: black; margin-right: 30px;">videos</p> <!-- 空三格效果通过增加右边距实现 -->  
      <button @click="showRankedVideos" style="background-color: lightgreen; border-radius: 5px; border: none; padding: 5px 10px; color: black;">Show them!</button>  
    </div>  
    <DemoGrid    
      v-if="rankedVideos.length"    
      :data="rankedVideos"    
      :columns="['Rank', 'Video ID', 'Video Name','Views']"    
    />   
  </div>    
</template>

<script>  
import DemoGrid from './Grid.vue';  
import axios from 'axios';  
  
export default {  
  components: {  
    DemoGrid  
  },  
  data() {  
    return {  
      selectedCount: '5',  
      rankedVideos: [],  
      gridData: [] // 初始为空数组，将从API获取数据  
    };  
  },  
  created() {  
    this.fetchVideos(); // 在组件创建时获取视频数据  
  },  
  methods: {  
    fetchVideos() {  
      axios.get('http://127.0.0.1:8000/getVideos')  
        .then(response => {  
          this.gridData = response.data; // 将响应数据赋值给gridData  
          this.showRankedVideos(); // 数据加载完成后调用排序和显示方法  
        })  
        .catch(error => {  
          console.error(error);  
        });  
    },  
    showRankedVideos() {  
      this.rankedVideos = [...this.gridData]  
        .sort((a, b) => b.Views - a.Views)  
        .slice(0, parseInt(this.selectedCount, 10))  
        .map((video, index) => ({  
          Rank: index + 1,  
          'Video ID': video['Video ID'],  
          'Video Name': video.Title, // 假设视频名称用Title字段表示  
          'Views': video.Views  
        }));  
    }  
  }  
};  
</script>