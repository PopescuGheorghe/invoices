class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.float :price
      t.integer :quantity
      t.references :invoice, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
