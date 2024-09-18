class AddJourSuiviToSuivi < ActiveRecord::Migration[7.1]
  def change
    add_column :suivis, :jour_suivi, :date
  end
end
