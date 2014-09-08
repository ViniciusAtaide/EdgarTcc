class Matricula
  include Mongoid::Document
  self.primary_key = 'id'

  field :ano_letivo, type: Integer
  field :datacancelamento, type: Date
  belongs_to :aluno
end
