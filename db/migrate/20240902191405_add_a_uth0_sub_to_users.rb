class AddAUth0SubToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :auth0_sub, :string
  end
end
