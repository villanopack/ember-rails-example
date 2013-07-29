App.Pelicula = Em.Object.extend({
  titulo: null,
  categoria: null,
  duration: null,
});

App.BuscadorController = Em.ArrayController.extend

  hayResultados: true

  query: null
  affinity: false
  peliculas: []

  _isChecked: ( ->
    console.log @get("affinity")
    if @get("affinity") == true
      console.log 'esta checkeado y se pone a cero'
      #Peliculas vacio para empezar a buscar de nuevo
      @set("peliculas" , [])
  ).observes('affinity')

  buscar: ->
    if @get("affinity") == true
      console.log "entrando en buscar"
      query = @get("query")
      array = @get("peliculas")
      $.getJSON("http://www.omdbapi.com/?t=#{query}",(data) ->
        $(data).each((index,value) ->
          t = App.Pelicula.create
            titulo: value.Title
            categoria: value.Genre
            duration: value.Runtime
          array.pushObject t
        )
      )

  resultados: ( ->
    if @get("query")
      @get("films").filter (item)=>
          item.get('titulo').toLowerCase().match(@get("query").toLowerCase())
  ).property('query' , 'affinity')

