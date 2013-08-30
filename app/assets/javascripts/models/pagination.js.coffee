# for more details see: http://emberjs.com/guides/models/defining-models/

App.Pagination = DS.Model.extend
  count: DS.attr 'number'
  page: DS.attr 'number'
  total_pages: DS.attr 'number'
