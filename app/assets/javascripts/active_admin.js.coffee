#= require active_admin/base

$ ->
  $turno = $("#turno")
  $turno.on 'change', ->
    turno = $turno.val()
    $.ajax
      url: '/admin/avaliacoes/find_turmas_by_turno',
      data: { turma:  }
      method: 'get',
      success: (turmas) ->
        console.log turmas