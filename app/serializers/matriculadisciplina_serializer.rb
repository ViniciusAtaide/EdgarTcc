class MatriculadisciplinaSerializer < ActiveModel::Serializer
  attributes :id

  has_one :matricula
  has_many :avaliacoes
end
