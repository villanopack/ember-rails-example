App.IndexRoute = Ember.Route.extend

    redirect: ->
      @transitionTo('films.index')


