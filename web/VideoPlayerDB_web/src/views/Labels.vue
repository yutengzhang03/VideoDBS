<script setup>
import LabelsTableMain from "./components/LabelsTableMain.vue";
import LabelsTableUsers from "./components/LabelsTableUsers.vue";
</script>
<template>
  <div class="py-4 container-fluid">
    <div class="row">
      <div class="col-12">
        <labels-table-main />
      </div>
    </div>
    <div class="mt-4 row">
      <div class="col-12">
        <labels-table-users  />
      </div>
    </div>
  </div>
</template>
