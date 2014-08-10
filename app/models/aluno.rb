class Aluno < ActiveRecord::Base
	has_many :matriculas
end
