<template>
    <canvas ref="kidneyCanvas" :width="width || 500" :height="height || 500" />
</template>
<script>
import { ref, onMounted } from 'vue';
import { createScene } from '../scenes/KidneySimulationScene';

export default {
    name: 'KidneySimulation',

    props: [ 'width', 'height' ],

    setup(props) {
        const kidneyCanvas = ref(null);

        //const width = ref(props.width || 500)
        //const height = ref(props.height || 500)

        // This require statement is important. It tells webpack to include the model in the final build of the app.
        const model = require('../assets/models/VH_M_Kidney_R.glb')  // https://hubmapconsortium.github.io/ccf-releases/v1.2/docs/ref-organs/kidney-male-right.html

        onMounted(() => {
            if (kidneyCanvas.value) {
                createScene(kidneyCanvas.value, model.default);
            }
        });

        return {
            kidneyCanvas,
        };
    },
};
</script>