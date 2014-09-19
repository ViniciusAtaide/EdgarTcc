ActiveAdmin.register Matricula do
	form do |f|
		f.inputs "Dados" do
			f.input :aluno
			f.input :ano_letivo
			f.input :datacancelamento, label: "Data de cancelamento", as: :date_select
		end
		f.actions
	end
end
