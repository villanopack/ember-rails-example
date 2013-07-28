App.DatePicker = Ember.TextField.extend
  classNames: ['date-picker']

  textToDateTransform: ((key, value) ->
    # es un setter puesto que asigna un valor
    if arguments.length == 2
      if value && /\d{4}-\d{2}-\d{2}/.test(value)
        parts = value.split '-'
        date = new Date()
        date.setYear parts[0]
        date.setMonth parts[1] - 1
        date.setDate parts[2]

        @set 'fecha',  date
      else
        @set 'fecha', null
    #si no hay valor es solo un getter y coge el campo date que ha sido asignado arriba
    #y como hemos llamado con dateBinding, coge el campo date
    else if !value && @get('fecha')
      month =  @get('fecha').getMonth() + 1
      date = @get('fecha').getDate()

      month = "0#{month}" if month < 10
      date = "0#{date}" if date < 10

      "%@-%@-%@".fmt @get('fecha').getFullYear(), month, date
    else
      value
  ).property()

  placeholder: "yyyy-mm-dd"
  size: 8

  valueBinding: "textToDateTransform"
  