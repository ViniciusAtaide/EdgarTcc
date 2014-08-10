class CreateMatriculas < ActiveRecord::Migration
  def change
    create_table :matriculas do |t|
      t.references :aluno, index: true
      t.integer :ano_letivo
      t.date :datacancelamento

      t.timestamps
    end
  end
end
