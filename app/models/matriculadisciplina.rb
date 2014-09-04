class Matriculadisciplina
  include Mongoid::Document


  belongs_to :matricula
  belongs_to :turmadisciplina
  has_many :avaliacoes
end
