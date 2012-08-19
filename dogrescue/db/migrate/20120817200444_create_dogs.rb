class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.decimal :age
      t.text :description
      t.boolean :available

      t.timestamps
    end
  end
end
