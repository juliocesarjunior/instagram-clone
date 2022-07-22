class AddUsernameToAdmins < ActiveRecord::Migration[5.2]
  def change
    add_column :admins, :first_name, :string, limit: 20
    add_column :admins, :last_name, :string, limit: 20
    add_column :admins, :username, :string, limit: 20
  end
end
