#= require active_admin/base

$ ->

  $turno = $("#turno")
  $turmas = $("select#turmas")
  $corpo = $("#corpo")

  $turno.on 'change', ->


    $turmas
      .find('option')
      .remove()
      .end()
      .append '<option value="">Turmas</option>'

    turno = $turno.val()

    $.ajax
      url: '/turmas/by_turno',
      data: { turno: turno }
      method: 'get',
      success: (resp) ->
        $.each resp.turmas, (id, turma) ->
          $turmas.append "<option value=#{turma}>#{turma.serie} #{turma.turma} - #{turma.turno}</option>"

  $turmas.on 'change', ->
    turma = $turmas.find('option:selected').text()

    $.ajax
      url: '/turmas',
      data: {
        serie: turma.substr(0,1),
        turma: turma.substr(2,1),
        turno: turma.substr(6)
      }
      method: 'get',
      success: (resp) ->
        console.log resp


        #for matdis in resp.turma.turmadisciplina.matriculadisciplinas

        #  $tr = $corpo.append "<tr>"
          # $tr.append "<td> #{ matdis.matricula.aluno.nome } </td>"
          # for avaliacao in matdis.avaliacoes
            # $tr.append "<td> #{ avaliacao.nota }</td>"
          
