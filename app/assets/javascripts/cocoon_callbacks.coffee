jQuery(document).on 'turbolinks:load', ->
  cliente_modulos = $('#cliente_modulos')
 
  cliente_modulos.on 'cocoon:after-insert', (e, added_el) ->
    added_el.find("input").first().focus();

 
  cliente_modulos.on 'cocoon:before-remove', (e, el_to_remove) ->
    $(this).data('remove-timeout', 1000)
    el_to_remove.fadeOut(1000)
    # COMENTÁRIO: Cria pequena animação ao apagar uma experiencia