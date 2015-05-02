class TurmadisciplinaSerializer < ActiveModel::Serializer
  attributes :id

  has_many :matriculadisciplinas
end
