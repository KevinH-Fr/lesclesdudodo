class AddNomToProduits < ActiveRecord::Migration[7.1]
  def change
    add_column :produits, :nom, :string
  end
end
