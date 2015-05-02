class MatriculaSerializer < ActiveModel::Serializer
  attributes :id, :ano_letivo

  has_one :aluno
end
