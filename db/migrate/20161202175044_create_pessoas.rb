class CreatePessoas < ActiveRecord::Migration
  def change
    create_table :pessoas do |t|
      t.string :name
      t.integer :age
      t.boolean :published

      t.timestamps null: false
    end
  end
end
