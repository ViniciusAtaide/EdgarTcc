class Turmadisciplina < ActiveRecord::Base
  belongs_to :turma
  belongs_to :professor
  belongs_to :disciplina
  belongs_to :matriculadisciplina
end
