class Avaliacao
  include Mongoid::Document

  field :tipoavaliacao, type: String
  field :nota, type: Float
  belongs_to :matriculadisciplina
end
