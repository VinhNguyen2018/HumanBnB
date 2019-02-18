class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :image_url, :string
    add_column :users, :skills, :string
    add_column :users, :bio, :text
    add_column :users, :gender, :string
    add_column :users, :age, :integer
  end
end
