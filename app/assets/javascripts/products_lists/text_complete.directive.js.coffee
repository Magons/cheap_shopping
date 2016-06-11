@textComplete = (Textcomplete) ->
  {
    restrict: 'A'
    scope:
      members: '='
      message: '='
    transclude: true
    link: (scope, element, attrs) ->

      match = /(\S+\s+|^)(.*)$/

      callback = (term, callback) ->
        callback $.map(scope.members, (mention) ->
          return null if term == '' || term == mention.name
          if mention.name.toLowerCase().indexOf(term.toLowerCase()) == 0
            mention.name
          else
            null
        )

      textcomplete = new Textcomplete(element, [{
        match: match
        search: callback
        index: 2
        replace: (mention) ->
          mention
      }])

      $(textcomplete).on
        'textComplete:select': (e, value) ->
          $.map(scope.members, (mention) ->
            scope.$parent.product = mention if mention.name == value
          )
          scope.$apply ->
            scope.message = value

        'textComplete:show': (e) ->
          $(this).data 'autocompleting', true
        'textComplete:hide': (e) ->
          $(this).data 'autocompleting', false
    }
