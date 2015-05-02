class Turma
  
  include Mongoid::Document
  self.primary_key = 'id'

  field :turno
  field :serie
  field :turma

  validates_uniqueness_of :turma, scope: :serie
  validates_presence_of :turno, :serie, :turma

  has_one :turmadisciplina

  def display_name
    "#{serie} #{turma} #{turno}"
  end

end
