class Avaliacao
  include Mongoid::Document
  self.primary_key = 'id'

  field :tipoavaliacao
  field :nota, type: Float
  belongs_to :matriculadisciplina
end
