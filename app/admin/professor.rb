ActiveAdmin.register Professor do

  permit_params :nome, :matricula_estadual, :formacao, :email, :telefone, :cpf
end
