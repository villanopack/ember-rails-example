Handlebars.registerHelper "submitButton", (texto) ->
  new Handlebars.SafeString '<button type="submit" class="btn btn-primary">' + texto + '</button>'