class AddTokenToAdmins < ActiveRecord::Migration[5.1]
  def change
    add_column :admins, :token, :string
  end
end