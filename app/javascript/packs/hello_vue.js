
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