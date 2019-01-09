import Vue from 'vue/dist/vue.esm'
import TurbolinksAdapter from 'vue-turbolinks'
import VueResource from 'vue-resource'
 
Vue.use(VueResource)
Vue.use(TurbolinksAdapter)
 
document.addEventListener('turbolinks:load', () => {
  Vue.http.headers.common['X-CSRF-Token'] = document.querySelector('meta[name="csrf-token"]').getAttribute('content')

  var element = document.getElementById("cliente-form")
  if(element != null){
    var cliente = JSON.parse(element.dataset.cliente)
    var cliente_modulos_attributes = JSON.parse(element.dataset.clienteModulosAttributes)

    cliente_modulos_attributes.forEach(function(cliente_modulo) { cliente_modulo._destroy = null })

    cliente.cliente_modulos_attributes = cliente_modulos_attributes


    var app = new Vue({
      el: element,
      mixins: [TurbolinksAdapter],
      data: function() {
        return { cliente: cliente }
      }
    })
  }
  // Vue.http.headers.common['X-CSRF-Token'] = document.querySelector('meta[name="csrf-token"]').getAttribute('content')
 
  // var element = document.getElementById("usuario-form")
 
  // if (element != null) {
  //   var usuario = JSON.parse(element.dataset.usuario)
 
  //   var app = new Vue({
  //     el: element,
  //     data: function() {
  //       return { usuario: usuario }
  //     },
  //     methods: {
  //       saveUsuario() {
  //         this.$http.post('/usuarios', { usuario: this.usuario }).then(response => {
  //           Turbolinks.visit(`/usuarios/${response.body.id}`)
  //         }, response => {
  //           console.log(response)
  //         })
  //       }
  //     }
  //   });
  // }
});