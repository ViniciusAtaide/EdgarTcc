class Disciplina
  include Mongoid::Document
  self.primary_key = 'id'
  validates_uniqueness_of :nome

  field :nome
  field :cargahoraria, type: Integer

  has_one :turmadisciplina
  def display_name
    "#{nome}"
  end
end
