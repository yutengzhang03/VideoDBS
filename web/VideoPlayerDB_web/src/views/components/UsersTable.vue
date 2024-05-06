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
      gridColumns: ['ID', 'Name', 'Location', 'Password', 'Age', 'Gender', 'Last_login', 'IP']
    };
  },
  created() {
    axios.get('http://127.0.0.1:8000/getUsers')
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
  All Users
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
