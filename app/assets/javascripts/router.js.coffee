# For more information see: http://emberjs.com/guides/routing/

App.Router.map ()->
   @resource 'movies' , ->
      @route 'free'
      @route 'index'
      @route 'movie', path: '/:movie'
   @resource 'buscador'

