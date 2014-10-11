class Turmadisciplina
  include Mongoid::Document
  self.primary_key = 'id'

  field :descricao, type: String
  belongs_to :turma
  belongs_to :professor
  belongs_to :disciplina
  has_many :matriculadisciplinas

  def display_name
  	"#{id}"
  end
end
