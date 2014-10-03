class Aluno
  include Mongoid::Document
  self.primary_key = 'id' 
  field :nome
	has_one :matricula

	def display_name
		"#{nome}"
	end
end