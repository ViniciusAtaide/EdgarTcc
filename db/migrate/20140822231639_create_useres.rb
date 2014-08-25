class CreateUseres < ActiveRecord::Migration
  def change
    create_table :useres do |t|

      t.timestamps
    end
  end
end
