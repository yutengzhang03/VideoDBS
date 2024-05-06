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
      gridColumns: ['Label ID', 'Label', 'Description']
    };
  },
  created() {
    axios.get('http://127.0.0.1:8000/getLabels')
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
  All Labels  
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