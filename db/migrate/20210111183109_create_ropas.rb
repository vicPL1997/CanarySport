class CreateRopas < ActiveRecord::Migration[6.1]
  def change
    create_table :ropas do |t|
      t.string :nombre
      t.decimal :precio
      t.text :descripcion

      t.timestamps
    end
  end
end
