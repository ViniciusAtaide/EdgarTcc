class Aluno
  include Mongoid::Document

  after_save :criar_matricula

  self.primary_key = 'id'

  field :nome
  field :pai
  field :mae
  field :responsavel
  field :data_nascimento, type: Date
  field :naturalidade
  field :endereco
  field :telefone

  has_one :matricula

  accepts_nested_attributes_for :matricula

  def display_name
    "#{nome}"
  end

  validates :nome, presence: true
  validates :data_nascimento, presence: true
  validates :naturalidade, presence: true
  validates :endereco, presence: true
  validates :telefone, presence: true

private

  def criar_matricula
    self.matricula = Matricula.create ano_letivo: Date.current.year
  end

end
