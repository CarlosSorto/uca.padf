require('./bootstrap');
window.Pikaday = require('pikaday');
require('pikaday/css/pikaday.css');
require('owl.carousel');
require('./jquery-jvectormap-2.0.3.min.js');
require('./jquery-jvectormap-world-mill.js');

window.Vue = require('vue');
window.vueFilter = require('vue-filter');
window.vuePaginate = require('vuejs-paginate');

Vue.use(vueFilter);
Vue.component('paginate', vuePaginate);

Vue.component('documents', require('./components/Documents.vue'));
Vue.component('formations', require('./components/Formations.vue'));
Vue.component('organizations', require('./components/Organizations.vue'));

new Vue({
    el: '#app'
});

require('chosen-js');
require('chosen-js/chosen.css');
require('./site');
