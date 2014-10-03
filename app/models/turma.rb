class Turma
  include Mongoid::Document
  self.primary_key = 'id'

  field :turno
  field :serie
  field :turma

  validates_uniqueness_of :turma, scope: :serie

  has_one :turmadisciplina

  def display_name
    "#{serie} #{turma} #{turno}"
  end
end
