class Professor 
  include Mongoid::Document

  field :nome, type: String
  field :cpf, type: String
end
