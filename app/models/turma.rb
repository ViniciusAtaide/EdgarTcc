class Turma
  include Mongoid::Document

  field :descricao, type: String
  field :turno, type: String
end
