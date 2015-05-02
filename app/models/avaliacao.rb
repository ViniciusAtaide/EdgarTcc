class Avaliacao
  include Mongoid::Document
  self.primary_key = 'id'

  field :tipoavaliacao
  field :bimestre, type: Integer
  field :nota, type: Float

  belongs_to :matriculadisciplina

  validates :tipoavaliacao, presence: true
  validates :nota, presence: true
end
