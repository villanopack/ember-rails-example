App.Adapter = DS.RESTAdapter.extend({
  //bulkCommit: false , // encadena las llamadas a la API, no creo que la nuestra lo soporte asi que lo quito
  url: 'https://qa-apiv2.wuaki.tv',   //  especifico la url sobre la que tirar las peticiones
  buildURL: function(record, suffix) {  //add .json to the request, wihtout this, it calls api.com/movies.json and now , api.com/movies.json . Our api needs the second way :D
    var s = this._super(record, suffix);
    return s + ".json";
  },

  serializer: DS.RESTSerializer.extend({
      extract: function(loader, json, type, record) {
          var root = this.rootForType(type);
          // now root is the string of the type
          // so, we have to create a new json hash with the root type and the actual data ( that dont have key type )
          newJSON = {}
          newJSON[root] = json
          json = newJSON
          //

          this.sideload(loader, type, json, root);
          this.extractMeta(loader, type, json);

          if (json[root]) {
              if (record) { loader.updateId(record, json[root]); }
              this.extractRecordRepresentation(loader, type, json[root]);
          } else {
              Ember.Logger.warn("Extract requested, but no data given for " + type + ". This may cause weird problems.");
          }
      }
   })

});

//
App.Adapter.configure('App.Movie', {
   sideloadAs: 'pagination'
});

App.Adapter.map( 'App.Movie', {
    artwork: { embedded: 'always' }
});


//App.Adapter.configure("plurals", {
//    pagination: 'paginations'
//});



App.Store = DS.Store.extend({
  revision: 12,
  adapter:  App.Adapter.create()
});


