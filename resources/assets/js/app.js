require('./bootstrap');
// require('./site');

window.Vue = require('vue');
window.vueFilter = require('vue-filter');
window.vuePaginate = require('vuejs-paginate');

Vue.use(vueFilter);
Vue.component('paginate', vuePaginate);

Vue.component('documents', require('./components/Documents.vue'));
Vue.component('formations', require('./components/Formations.vue'));
Vue.component('organizations', require('./components/Organizations.vue'));

const app = new Vue({
    el: '#app'
});
