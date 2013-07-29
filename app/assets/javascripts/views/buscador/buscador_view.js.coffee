App.BuscadorView = Em.View.extend

  templateName : 'buscador/buscador'



App.InputBuscador = Em.TextField.extend

  insertNewline: ->
    console.log 'enter pulsado'
    @get("controller").buscar()


App.CheckBoxBuscador = Em.Checkbox.extend

  insertNewline: ->
    console.log 'enter pulsado'
    @get("controller").buscar()