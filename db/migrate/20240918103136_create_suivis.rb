class CreateSuivis < ActiveRecord::Migration[7.1]
  def change
    create_table :suivis do |t|
      t.references :enfant, null: false, foreign_key: true
      t.integer :temps_endormissement
      t.integer :heure_endormissement

      t.timestamps
    end
  end
end
