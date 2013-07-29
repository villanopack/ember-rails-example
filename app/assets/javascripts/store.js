App.Adapter = DS.RESTAdapter.extend({
  bulkCommit: false
});


App.Adapter.map('App.Film', {
//  actors: {embedded: 'always'}
  actors: {embedded: 'inline'}
});

App.Store = DS.Store.extend({
  revision: 12,
  adapter:  App.Adapter.create()
});
