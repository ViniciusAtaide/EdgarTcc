class Disciplina
  include Mongoid::Document

  field :nome, type: String
  field :cargahoraria, type: Integer
end
