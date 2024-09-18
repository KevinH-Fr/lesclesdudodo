class CreateProduits < ActiveRecord::Migration[7.1]
  def change
    create_table :produits do |t|
      t.text :description
      t.integer :prix

      t.timestamps
    end
  end
end
