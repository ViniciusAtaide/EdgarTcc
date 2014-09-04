class Aluno
  include Mongoid::Document

  field :nome, type: String
	has_many :matriculas
end
