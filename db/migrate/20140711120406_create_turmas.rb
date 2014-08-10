class CreateTurmas < ActiveRecord::Migration
  def change
    create_table :turmas do |t|
      t.string :descricao
      t.string :turno

      t.timestamps
    end
  end
end
