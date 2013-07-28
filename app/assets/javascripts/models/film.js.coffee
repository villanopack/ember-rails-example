# for more details see: http://emberjs.com/guides/models/defining-models/

App.Film = DS.Model.extend
  titulo: DS.attr 'string'
  categoria: DS.attr 'string'
  duration: DS.attr 'number'
  estreno: DS.attr 'boolean'
  created_at: DS.attr 'date'
  url_portada: DS.attr 'string'
  actors: DS.hasMany 'App.Actor'

  duracion_texto:( ->
    tiempo = @get "duration"
    horas = parseInt(tiempo / 60 )
    minutos = tiempo % 60
    " #{horas} horas y #{minutos} minutos"
  ).property('duration')
