<script>
import DemoGrid from './Grid.vue'
import { ref } from 'vue'

import axios from "axios"


export default {
  components: {
    DemoGrid
  },
  data() {
    return {
      gridData: [],
      searchQuery: ref(''),
      gridColumns: ['Video ID', 'Title', 'Duration',  'Author ID',  'Likes','Favors','Coins','Transfer','Views','Public Date','Channel']
    };
  },
  created() {
    axios.get('http://127.0.0.1:8000/getVideos')
      .then(response => {
        this.gridData = response.data;
      })
      .catch(error => {
        console.error(error);
      });
  }
};

</script>




<template>
<h1 style="font-size: larger; font-weight: bold; color: white;">  
  All Videos
</h1>

<form id="search">  
  <strong style="color: black;">Search ID:  </strong>  
  <input name="query" v-model="searchQuery">  
</form>

  <p>
  </p>

  <DemoGrid
    :data="gridData"
    :columns="gridColumns"
    :filter-key="searchQuery">
  </DemoGrid>
  
</template>