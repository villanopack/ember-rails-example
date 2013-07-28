# For more information see: http://emberjs.com/guides/routing/

App.Router.map ()->
   @resource 'films' , ->
      @route 'index'
      @route 'film', path: '/:film_id'
      @route 'new'
      @route 'edit', path: '/:film_id/edit'
   @resource 'actors', ->
     @route 'index'
     @route 'actor', path: '/:actor_id'
     @route 'new'
     @route 'edit', path: '/:actor_id/edit'
   @resource 'buscador'

