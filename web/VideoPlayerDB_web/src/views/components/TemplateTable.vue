<script setup>
import DemoGrid from './Grid.vue'
import { ref } from 'vue'
const searchQuery = ref('')
const gridColumns = ['User ID', 'Video ID', 'Last stop time', 'Last play time']
const gridData = [

]
</script>

<template>
  <h1 style="font-size: larger; font-weight: bold; color: white;">  
  All Labels  
  </h1>
  <form id="search">
    Search <input name="query" v-model="searchQuery">
  </form>

  <p>
  </p>

  <DemoGrid
    :data="gridData"
    :columns="gridColumns"
    :filter-key="searchQuery">
  </DemoGrid>
  
</template>