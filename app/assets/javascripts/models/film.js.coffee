# for more details see: http://emberjs.com/guides/models/defining-models/

App.Movie = DS.Model.extend
  title: DS.attr 'string'
  rating_average: DS.attr 'string'
  short_plot: DS.attr 'string'
  free: DS.attr 'boolean'
  duration : DS.attr 'string'
  artwork: DS.belongsTo('App.Artwork')
  portada_img:( ->
   @get('artwork.thumb')
  ).property('artwork')
  calificacion:( ->
    "buena"
  ).property('rating_average')
