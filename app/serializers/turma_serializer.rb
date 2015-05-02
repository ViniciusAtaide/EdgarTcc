class TurmaSerializer < ActiveModel::Serializer
  attributes :id, :serie, :turma, :turno
  
  has_one :turmadisciplina
end
