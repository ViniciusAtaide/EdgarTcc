class Professor 
  include Mongoid::Document
  self.primary_key = 'id'

  field :nome
  field :matricula_estadual
  field :formacao
  field :email
  field :telefone
  field :cpf

  def display_name
    "#{nome}"
  end
end
