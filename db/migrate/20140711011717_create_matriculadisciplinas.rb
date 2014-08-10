class CreateMatriculadisciplinas < ActiveRecord::Migration
  def change
    create_table :matriculadisciplinas do |t|
      t.references :matricula, index: true
      t.references :turmadisciplina, index: true

      t.timestamps
    end
  end
end
