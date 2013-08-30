App.ApplicationController = Em.Controller.extend
  init: ->
    console.log 'entra en index'

  isPeliculas: ( ->
    @get('ruta_controller') == 'films'
  ).property('ruta_controller')

  isPeliculasFree: ( ->
    @get('ruta_controller') == 'filmsFree'
  ).property('ruta_controller')

  isBuscador: ( ->
    @get('ruta_controller') == 'buscador'
  ).property('ruta_controller')