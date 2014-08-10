class Matriculadisciplina < ActiveRecord::Base
  belongs_to :matricula
  belongs_to :turmadisciplina
  has_many :avaliacoes
end
