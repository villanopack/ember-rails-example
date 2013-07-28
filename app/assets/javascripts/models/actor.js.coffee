App.Actor = DS.Model.extend
  nombre: DS.attr 'string'
  apellido: DS.attr 'string'
  nacionalidad: DS.attr 'string'
  fecha_nacimiento: DS.attr 'date'
  url_pefil: DS.attr 'string'
  films: DS.hasMany  'App.Film'

