class Turmadisciplina
  include Mongoid::Document
  self.primary_key = 'id'

  field :descricao, type: String
  field :disciplina
  field :cargahoraria

  belongs_to :turma
  belongs_to :professor

  has_many :matriculadisciplinas

  def display_name
    "#{id}"
  end
end
