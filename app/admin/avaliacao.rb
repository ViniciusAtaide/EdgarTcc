ActiveAdmin.register Avaliacao do
  permit_params :tipoavaliacao, :nota, :matriculadisciplina
  
  index do
    column :tipoavaliacao
    column :nota
    column :matriculadisciplina
    actions
  end

  form partial: 'form'

  controller do
    def new
      @avaliacao = Avaliacao.new
      @turnos = ['Manha', 'Tarde', 'Noite']
    end
  end

end
