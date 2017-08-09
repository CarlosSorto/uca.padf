
<template>
    <section class="pv4">
        <div class="center tc">
            <h1 class="text--blue f2 fw4">Inicia tu Búsqueda</h1>
            <div class="w-80 center">
                <select name="" id="" class="pa2 input-reset ba bg-transparent b--silver silver w-30-l w-100 text--light-blue-50 mh0">
                    <option value="" class="text--light-blue-50">Áreas de especialización</option>
                    <option value="SV" class="text--light-blue-50">El Salvador</option>
                    <option value="HN" class="text--light-blue-50">Honduras</option>
                    <option value="GT" class="text--light-blue-50">Guatemala</option>
                    <option value="CR" class="text--light-blue-50">Costa Rica</option>
                </select>
                <select name="" id="" class="pa2 input-reset ba bg-transparent b--silver silver w-30-l w-100 text--light-blue-50 mh0">
                    <option value="" class="text--light-blue-50">Nombre de la Organización</option>
                    <option :value="organization.id" class="text--light-blue-50" v-for="organization in organizations">{{ organization.name }}</option>
                </select>
                <select name="" id="" class="pa2 input-reset ba bg-transparent b--silver silver w-30-l w-100 mb2 text--light-blue-50 mh0" v-on:change="selectVmapRegion">
                    <option value="" class="text--light-blue-50">Seleccione un País</option>
                    <option :value="country.iso" class="text--light-blue-50" v-for="country in countries">{{ country.name }}</option>
                </select>
                <a href="#" class="f5 bo--purple fw4 db link ba bw1 pv2 ph3-l text--purple hover-bg--purple hover-white bg-animate tc di-l"><span class="icon-search"></span></a>
            </div>
            <div class="cf w-90 mt4">
                <div class="fl w-60 dn db-l pa2">
                    <div id="vmap" style="width: 600px; height: 400px;"></div>
                </div>
                <div class="fl w-100 w-40-l pa2 shadow-4" v-for="organization in organizations">
                    <div class="relative pl7-l pl6 mb4 w-100 tl">
                        <img :src="organization.logo" alt="" class="w-20 absolute top-0 left-1">
                        <p class="f6 w-60 fw6 text--blue h3" v-text="organization.name"></p>
                        <a :href="'/orgnizaciones'+ organization.id" class="f6 fw4 tc center link ba bw1 white bo--purple text--purple pv2 w-100 ph4 hover-white hover-bg--purple">Más Información</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
</template>

<script>
    export default {
        data() {
            return {
                organizations: [],
                meta: [],
                mapEl: null,
                countries: [],
                queryCountry: {
                        "filter[q][iso|in][]": ['SV', 'GT', 'HN'],
                        "filter[q][DefaultSort|scp]": 1
                },
                queryOrganization: {
                        "filter[q][active|eq]": 1,
                },
            }
        },
        mounted() {
            this.get()
            this.initialize()
            this.getCountries()
            this.setVmapFocusRegion()
        },
        methods: {
            get() {
                axios.get('/api/organizations', {
                    params: this.queryOrganization
                }).then((response) => {
                    this.organizations = response.data.data
                    this.meta = response.data.meta
                });
            },
            initialize()
            {
                this.mapEl = $('#vmap');
                this.mapEl.vectorMap({
                  map: 'world_mill',
                  zoomOnScroll: true,
                  regionsSelectable: true,
                  regionsSelectableOne: true,
                });
                return this.vmap = this.mapEl.vectorMap('get', 'mapObject');
            },
            getCountries()
            {
                axios.get('/api/countries', {
                    params: this.queryCountry
                  }).then( (response) => {
                    this.countries = response.data.data
                })
            },
            setVmapFocusRegion(value){
              if (value == null) { value = 'SV'; }
              return this.mapEl.vectorMap('set', 'focus', {region: value});
            },
            selectVmapRegion(e){
                var value = $(e.target).val();
                if (value == null) { value = 'SV'; }
                return this.vmap['regions'][value].element.setSelected(true);
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
