
<template>
    <section class="pv4">
        <div class="center tc">
            <h1 class="text--blue f2 fw4">Inicia tu Búsqueda</h1>
            <div class="w-80 center">
                <select class="pa2 input-reset ba bg-transparent b--silver silver w-30-l w-100 text--light-blue-50 mh0">
                    <option value="" class="text--light-blue-50">Áreas de especialización</option>
                </select>
                <select class="pa2 input-reset ba bg-transparent b--silver silver w-30-l w-100 text--light-blue-50 mh0" v-model="organization">
                    <option value="" class="text--light-blue-50">Nombre de la Organización</option>
                    <option :value="organization.id" class="text--light-blue-50" v-for="organization in list_organizations">{{ organization.name }}</option>
                </select>
                <select class="pa2 input-reset ba bg-transparent b--silver silver w-30-l w-100 mb2 text--light-blue-50 mh0" v-model="country">
                    <option value="" class="text--light-blue-50">Seleccione un País</option>
                    <option :value="country.iso" class="text--light-blue-50" v-for="country in countries">{{ country.name }}</option>
                </select>
                <a class="f5 bo--purple fw4 db link ba bw1 pv2 ph3-l text--purple hover-bg--purple hover-white bg-animate tc di-l" @click="get"><span class="icon-search"></span></a>
            </div>
            <div class="cf w-90 mt4">
                <div class="fl w-60 dn db-l pa2">
                    <div id="vmap" style="width: 600px; height: 400px;"></div>
                </div>
                <div class="fl w-100 w-40-l pa2 shadow-4 bg-light-gray mt2" v-for="organization in organizations">
                    <div class="relative pl7-l pl6 mb4 w-100 tl">
                        <img :src="'storage/' + organization.logo" alt="" class="w-20 absolute top-0 left-1">
                        <p class="f6 w-60 fw6 text--blue h3" v-text="organization.name"></p>
                        <a :href="'/organizaciones-afiliadas/'+ organization.id" class="f6 fw4 tc center link ba bw1 white bo--purple text--purple pv2 w-100 ph4 hover-white hover-bg--purple">Más Información</a>
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
                list_organizations: [],
                organization: null,
                meta: [],
                mapEl: null,
                country: null,
                isos: [],
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
            this.getOrganizations()
            this.get()
            this.initialize()
            this.getCountries()
            this.setVmapFocusRegion()
        },
        methods: {
            get() {
                axios.get('/api/organizations', {
                    params: {
                        "filter[q][active|eq]": 1,
                        "filter[q][country_id|eq]": this.country != null ? this.countries.find(d => d.iso == this.country).id : null,
                        "filter[q][id|eq]": this.organization
                    }
                }).then((response) => {
                    this.organizations = response.data.data
                    this.meta = response.data.meta
                });
            },
            getOrganizations() {
                axios.get('/api/organizations', {
                    params: {
                        "filter[q][active|eq]": 1,
                    }
                }).then((response) => {
                    this.list_organizations = response.data.data
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
                  onRegionSelected: this.regionSelected
                });
                return this.vmap = this.mapEl.vectorMap('get', 'mapObject');
            },
            getCountries()
            {
                axios.get('/api/countries', {
                    params: this.queryCountry
                  }).then( (response) => {
                    this.countries = response.data.data
                    this.getIsos(response.data.data)
                })
            },
            getIsos(arr)
            {
                arr.forEach((element) => {
                    this.isos.push(element.iso)
                })
            },
            setVmapFocusRegion(value){
              if (value == null) { value = 'SV'; }
              return this.mapEl.vectorMap('set', 'focus', {region: value});
            },
            selectVmapRegion(e){
                var value = this.country;
                if (value == null || value == '') {
                    this.vmap.clearSelectedRegions()
                }
                else {
                    this.vmap.clearSelectedRegions();
                    return this.vmap['regions'][value].element.setSelected(true);
                    this.get()
                }
            },
            regionSelected(event, code, isSelected, selectedRegions) {
                console.log(this.isos.indexOf(code));
                if (isSelected) {
                    if (this.isos.indexOf(code) >= 0) {
                        this.country = code
                        this.get()
                    }
                }
            },
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
