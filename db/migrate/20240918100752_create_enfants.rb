class CreateEnfants < ActiveRecord::Migration[7.1]
  def change
    create_table :enfants do |t|
      t.references :user, null: false, foreign_key: true
      t.string :prenom
      t.date :birth

      t.timestamps
    end
  end
end
