<template>
    <section class="pv4 bg--light-blue">
        <div class="mw8 center ph3-ns">
            <div class="w-80 center">
                <input type="text" class="pa2 input-reset ba dib bg-transparent b--light-silver br1 bw1 w-30-l w-100 ma0" placeholder="Palabra Clave">
                <select name="" id="" class="pa2 input-reset dib ba bg-transparent b--light-silver br1 bw1 w-30-l w-100 text--light-blue-50 ma0">
                    <option value="" class="text--light-blue-50">Selecciones una Modalidad</option>
                </select>
                <select name="" id="" class="pa2 input-reset ba bg-transparent b--light-silver br1 bw1 w-30-l w-100 mb2 text--light-blue-50 ma0">
                    <option value="" class="text--light-blue-50">Fecha</option>
                </select>
                <a href="#" class="f5 bo--purple fw4 db link ba bw1 pv2 ph3-l text--purple hover-bg--purple hover-white bg-animate tc di-l"><span class="icon-search"></span></a>
            </div>
            <div class="cf ph2-ns pa2 ">
                <div class="tr right pt4 pr3">
                    <a class="link" :class="grid ? 'text--blue' : 'light-silver'" @click="toggle('grid')"><span class="icon-grid f4 pa2"></span></a>
                    <a class="link" :class="list ? 'text--blue' : 'light-silver'" @click="toggle('list')"><span class="icon-list f4"></span></a>
                </div>
                <transition name="slide-fade">
                    <div v-for="formation in formations" v-show="grid">
                        <div class="fl w-100 w-50-m w-third-l pa1">
                            <div class="ba bg-white b--black-10 mv4 w-100 mw6 center pa4 h6 shadow-5">
                                <h4 class="fw6 text--blue f5">{{ formation.title }}</h4>
                                <p class="lh-copy f6 h3-l h4 mb4">{{ formation.description | truncate(125, '...') }}</p>
                                <p class="text--light-blue-50 f6"><span :class="formation.modality.icon"></span> {{ formation.modality.name }}</p>
                                <div class="mv4">
                                    <a :href="'/formaciones/' + formation.id" class="f5 fw4 db tc bo--purple link ba bw1 pv2 text--purple hover-bg--purple hover-white bg-animate">Ir a Capacitación</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </transition>
                <transition name="slide-fade">
                    <div v-for="formation in formations" v-show="list">
                        <div class="ba bg-white b--black-10 mv4 w-100 center pa4 h6 shadow-5">
                            <p class="fw6 text--blue f5">{{ formation.title }}</p>
                            <p class="text--light-blue-50 f6"><span :class="formation.modality.icon"></span> {{ formation.modality.name }}</p>
                            <p class="lh-copy f6">{{ formation.description }}</p>
                            <a :href="'/formaciones/' + formation.id" class="f5 fw4 db tc bo--purple link ba bw1 pv2 text--purple hover-bg--purple hover-white bg-animate">Ir a Capacitación</a>
                        </div>
                    </div>
                </transition>
            </div>
            <div class="center tc">
                    <paginate   :page-count="parseInt(meta.total)"
                                :page-range="6"
                                :next-class="'dib tc mh2'"
                                :next-link-class="'link'"
                                :prev-class="'dib tc mh2'"
                                :prev-link-class="'link'"
                                :page-link-class="'link silver hover-text--purple f4'"
                                :page-class="'dib tc mh2'"
                                :container-class="'center tc dib list'">
                        <span slot="prevContent" class="icon-left-arrow f4 silver hover-text--purple"></span>
                        <span slot="nextContent" class="icon-right-arrow f4 text--blue hover-text--purple"></span>
                    </paginate>
            </div>
        </div>
    </section>
</template>

<script>
    export default {
        data() {
            return {
                formations: [],
                grid: true,
                list: false,
                meta: [],
            }
        },
        mounted() {
            this.get()
        },
        methods: {
            get() {
                axios.get('/api/formations').then((response) => {
                    this.formations = response.data.data
                    this.meta = response.data.meta
                });
            },
            toggle(type) {
                if (type == 'grid') {
                    this.grid = true
                    this.list = false
                }
                else if(type == 'list') {
                    this.grid = false
                    this.list = true
                }
            }
        }
    }
</script>
<style media="screen">
    /* Enter and leave animations can use different */
    /* durations and timing functions.              */
    .slide-fade-enter-active {
        transition: all .3s ease;
    }
    .slide-fade-leave-active {
        transition: all .8s cubic-bezier(1.0, 0.5, 0.8, 1.0);
    }
    .slide-fade-enter, .slide-fade-leave-to
    /* .slide-fade-leave-active below version 2.1.8 */ {
        transform: translateX(10px);
        opacity: 0;
    }
</style>
