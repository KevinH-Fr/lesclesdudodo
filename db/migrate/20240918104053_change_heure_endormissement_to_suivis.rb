class ChangeHeureEndormissementToSuivis < ActiveRecord::Migration[7.1]
  def change
    change_column :suivis, :heure_endormissement, :datetime
  end
end
