class TurmasController < ApplicationController
  def by_turno
    render json: Turma.where(turno: params[:turno])
  end

  def show

    turma = params[:turma]
    print turma
    render json: Aluno.where(matricula:
                 Matricula.where(matriculadisciplina:
                 Matriculadisciplina.where(turmadisciplina:
                 Turmadisciplina.where(turma:
                 Turma.where(serie: '123')
           ))))

  end
end
