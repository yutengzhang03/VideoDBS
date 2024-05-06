<script setup>
import { ref, computed } from 'vue'

const props = defineProps({
  data: Array,
  columns: Array,
  filterKey: String
})

const sortKey = ref('')
const sortOrders = ref(
  props.columns.reduce((o, key) => ((o[key] = 1), o), {})
)

const filteredData = computed(() => {  
  let { data, filterKey } = props;  
  const firstColumnName = props.columns[0]; // 假设第一列的名称在columns数组的第一个元素中  
  
  if (filterKey) {  
    filterKey = filterKey.toLowerCase();  
    // 只过滤第一列  
    data = data.filter((row) => {  
      const firstColumnValue = String(row[firstColumnName]).toLowerCase();  
      return firstColumnValue.includes(filterKey);  
    });  
  }  
  
  const key = sortKey.value;  
  if (key) {  
    const order = sortOrders.value[key];  
    data = data.slice().sort((a, b) => {  
      a = a[key];  
      b = b[key];  
      return (a === b ? 0 : a > b ? 1 : -1) * order;  
    });  
  }  
    
  return data;  
});
function sortBy(key) {
  sortKey.value = key
  sortOrders.value[key] *= -1
}

function capitalize(str) {
  return str.charAt(0).toUpperCase() + str.slice(1)
}
</script>

<template>
  <table v-if="filteredData.length">
    <thead>
      <tr>
        <th v-for="key in columns" :key="key"
          @click="sortBy(key)"
          :class="{ active: sortKey == key }">
          {{ capitalize(key) }}
          <span class="arrow" :class="sortOrders[key] > 0 ? 'asc' : 'dsc'">
          </span>
        </th>
      </tr>
    </thead>
    <tbody>
      <tr v-for="entry in filteredData" :key="entry['User_ID']" >
        <td v-for="key in columns" :key="key">
          {{entry[key]}}
        </td>
      </tr>
    </tbody>
  </table>
  <p v-else>No matches found.</p>
</template>

<style>
table {  
  border: 2px solid #42b983;  
  border-radius: 3px;  
  width: 100%; /* 确保表格宽度适应容器 */  
}  
  
th {  
  background-color: #42b983;  
  color: #ffffff; /* 标题字体颜色改为白色 */  
  cursor: pointer;  
  user-select: none;  
}  
  
/* 使用 CSS 的 nth-child 伪类来实现交错背景色 */  
tr:nth-child(even) td {  
  background-color: #ffffff; /* 偶数行背景色为白色 */  
}  
  
tr:nth-child(odd) td {  
  background-color: #e6f2e9; /* 奇数行背景色改为浅绿色，您可以根据需要调整为更深的绿色 */  
}  
  
/* 修改表格内字体颜色为深灰色 */  
td {  
  color: #555555; /* 字体颜色改为深灰色 */  
}  
  
th, td {  
  min-width: 120px;  
  padding: 10px 20px;  
  text-align: left; /* 表格内容左对齐，可根据需要调整 */  
}  
  
th.active {  
  color: #fff;  
}  
  
/* 箭头样式保持不变 */  
.arrow {  
  display: inline-block;  
  vertical-align: middle;  
  width: 0;  
  height: 0;  
  margin-left: 5px;  
  opacity: 0.66;  
}  
  
.arrow.asc {  
  border-left: 4px solid transparent;  
  border-right: 4px solid transparent;  
  border-bottom: 4px solid #fff;  
}  
  
.arrow.dsc {  
  border-left: 4px solid transparent;  
  border-right: 4px solid transparent;  
  border-top: 4px solid #fff;  
}
</style>