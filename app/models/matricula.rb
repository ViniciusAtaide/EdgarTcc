class Matricula
  include Mongoid::Document

  field :ano_letivo, type: Integer
  field :datacancelamento, type: Date
  belongs_to :aluno
end
