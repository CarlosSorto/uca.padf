<template>
    <section class="pv4" id="search">
        <div class="center w-60-l w-80">
            <h1 class="tc text--blue fw4 f2">Inicia tu búsqueda</h1>
            <div>
                <input type="text" class="pa2 input-reset ba bg-transparent b--silver silver w-30-l w-100 mh0" placeholder="Palabra Clave">
                <select name="" id="" class="pa2 input-reset ba bg-transparent b--silver silver w-30-l w-100 text--light-blue-50 mh0">
                    <option value="" class="text--light-blue-50">Selecciones un País</option>
                    <option value="SV" class="text--light-blue-50">El Salvador</option>
                    <option value="HN" class="text--light-blue-50">Honduras</option>
                    <option value="GT" class="text--light-blue-50">Guatemala</option>
                    <option value="CR" class="text--light-blue-50">Costa Rica</option>
                </select>
                <select name="" id="" class="pa2 input-reset ba bg-transparent b--silver silver w-30-l w-100 mb2 text--light-blue-50 mh0">
                    <option value="" class="text--light-blue-50">Año de Publicación</option>
                    <option value="1" class="text--light-blue-50">2015</option>
                    <option value="2" class="text--light-blue-50">2016</option>
                    <option value="3" class="text--light-blue-50">2017</option>
                </select>
                <a href="#" class="f5 bo--purple fw4 db link ba bw1 pv2-l ph3-l text--purple hover-bg--purple hover-white bg-animate tc di-l"><span class="icon-search"></span></a>
            </div>
            <div class="cf">
                <div class="fl w-100 w-50-m w-third-l ph2" v-for="document in documents">
                    <div class="ba bg-white b--black-10 mv4 ph3 pv2 w-100 mw6 h6 shadow-5">
                        <div class="relative pl5">
                            <span class="icon-pdf f1 silver ma1 absolute top-0 left-0"></span>
                            <h3 class="f5 fw5 text--blue">{{ document.title }}</h3>
                            <p class="silver f6">{{ document.author }}, {{ document.published_date }}</p>
                        </div>
                        <div class="mv4">
                            <a :href="'/repositorio-ddhh/' + document.id" class="f5 fw4 db tc bo--purple link ba bw1 pv2 text--purple hover-bg--purple hover-white bg-animate">Ver más</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="center tc">
                <ul class="center tc dib list">
                    <li class="dib tc mh2"><a href="" class="link"><span class="icon-left-arrow f4 silver hover-text--purple"></span></a></li>
                    <li class="dib tc mh2"><a href="" class="link silver hover-text--purple f4">1</a></li>
                    <li class="dib tc mh2"><a href="" class="link silver hover-text--purple f4">2</a></li>
                    <li class="dib tc mh2"><a href="" class="link silver hover-text--purple f4">3</a></li>
                    <li class="dib tc mh2"><a href="" class="link"><span class="icon-right-arrow f4 text--blue hover-text--purple"></span></a></li>
                </ul>
                </div>
            </div>
        </div>
    </section>
</template>

<script>
    export default {
        data() {
            return {
                documents: []
            }
        },
        mounted() {
            console.log('Component mounted.')
            this.get()
        },
        methods: {
            get() {
                axios.get('/api/documents').then((response) => {
                    console.log(response.data.data);
                    this.documents = response.data.data
                });
            }
        }

    }
</script>
