class AddColumnstoModels < ActiveRecord::Migration[5.2]
  def change
    add_column :services, :service_image_url, :string
  end
end
