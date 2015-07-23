class TurmasController < ApplicationController
  def by_turno
    turmas = [
      {Turno: "Manhã"},
      {}

    ]
    render json: {Turma.where(turno: params[:turno])}
  end

  def show
    if params[:turma] && params[:serie] && params[:turno]
      param_turma = params[:turma]
      param_serie = params[:serie].to_i
      param_turno = params[:turno]

      turma = Turma.where(serie: param_serie, turma: param_turma, turno: param_turno).first

      render json: turma
    else
      render json: Aluno.find(params[:id])
    end
  end
end
