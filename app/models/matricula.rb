class Matricula
  include Mongoid::Document
  self.primary_key = 'id'

  field :ano_letivo, type: Integer
  field :datacancelamento, type: Date
  belongs_to :aluno
  has_many :matriculadisciplinas

  def display_name
  	"#{id}"
  end
end
