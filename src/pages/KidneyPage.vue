<template>
  <q-page class="row items-center justify-evenly">
    <KidneySimulation :width="width" :height="height" />
    <q-resize-observer @resize="onResize" />
    <div class="controls">

    </div>
  </q-page>
</template>

<script lang="ts">
import { defineComponent, ref } from 'vue';
import KidneySimulation from '../components/KidneySimulation.vue';

export default defineComponent({
    name: 'KidneyPage',
    setup() {
        const width = ref(500);
        const height = ref(500);

        function onResize(size: { width: number; height: number; })
        {
          width.value = size.width;
          height.value = size.height;
        }

        return {
            width,
            height,

            onResize,
        };
    },
    components: { KidneySimulation }
});
</script>
