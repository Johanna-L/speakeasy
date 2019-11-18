class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :last_name, :string
    add_column :users, :first_name, :string
    add_column :users, :background, :text
    add_column :users, :social_media, :text
    add_column :users, :company_name, :string
    add_column :users, :company_info, :text
  end
end
