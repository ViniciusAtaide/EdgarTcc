ActiveAdmin.register Turmadisciplina do
  form do |f|
    f.inputs "Campos" do
      f.input :turma
      f.input :professor
      f.input :disciplina
      f.input :matriculadisciplina
    end
    f.actions
  end
end