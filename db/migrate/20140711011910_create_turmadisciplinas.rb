class CreateTurmadisciplinas < ActiveRecord::Migration
  def change
    create_table :turmadisciplinas do |t|
      t.references :turma, index: true
      t.references :professor, index: true
      t.references :disciplina, index: true

      t.timestamps
    end
  end
end
