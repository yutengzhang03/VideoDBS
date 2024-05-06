<script setup>
import { computed } from "vue";
import { useStore } from "vuex";

const store = useStore();
const isRTL = computed(() => store.state.isRTL);
const sidebarMinimize = () => store.commit("sidebarMinimize");

const minimizeSidebar = () => {
  if (window.innerWidth < 1200) {
    sidebarMinimize();
  }
};

defineProps({
  to: {
    type: String,
    required: true,
  },
  navText: {
    type: String,
    required: true,
  },
});
</script>


<template>  
  <router-link :to="to" class="nav-link" @click="minimizeSidebar">  
    <div class="nav-item d-flex align-items-center">  
      <div  
        class="icon-container d-flex align-items-center justify-content-center mr-2"  
      >  
        <slot name="icon"></slot>  
      </div>  
      <span class="nav-link-text ml-2" :class="isRTL ? 'me-1' : 'ms-1'">{{ navText }}</span>  
    </div>  
  </router-link>  
</template>  
  
<style scoped>  
.nav-item {  
  display: flex;  
  align-items: center;  
  margin-left: 30px;
  /* 如果需要整体向右偏移，可以在这里添加 margin-left */  
}  
.icon-container {  
  /* 这里可以通过设置 margin-right 来控制图标和其他元素之间的间距 */  
  margin-right: 10px;
}  
.nav-link-text {  
  /* 这里可以设置文本样式，如果需要额外的偏移，也可以添加 margin-left */  
}  
</style>