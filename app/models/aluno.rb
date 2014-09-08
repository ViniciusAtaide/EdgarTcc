class Aluno
  include Mongoid::Document
  self.primary_key = 'id' 
  field :nome
	has_many :matriculas

	def display_name
		"#{nome}"
	end
end