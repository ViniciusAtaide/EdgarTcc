class CreateAvaliacoes < ActiveRecord::Migration
  def change
    create_table :avaliacoes do |t|
      t.string :tipoaval
      t.float :nota
      t.references :matriculadisciplina, index: true

      t.timestamps
    end
  end
end
