class Matriculadisciplina
  include Mongoid::Document
  self.primary_key = 'id'


  belongs_to :matricula
  belongs_to :turmadisciplina
  has_many :avaliacoes

  def display_name
    "#{matricula.aluno.nome} - #{matricula.id}"
  end

end
