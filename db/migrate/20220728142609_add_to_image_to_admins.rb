class AddToImageToAdmins < ActiveRecord::Migration[5.2]
  def change
    add_column :admins, :image, :string
    add_column :admins, :description, :text
    add_column :admins, :website, :string
  end
end
