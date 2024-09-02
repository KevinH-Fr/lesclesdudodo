class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :prenom
      t.string :nom
      t.string :mail

      t.timestamps
    end
  end
end
