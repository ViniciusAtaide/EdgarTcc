class Turmadisciplina
  include Mongoid::Document
  self.primary_key = 'id'

  belongs_to :turma
  belongs_to :professor
  belongs_to :disciplina
  has_many :matriculadisciplina

  def display_name
  	"#{id}"
  end
end
