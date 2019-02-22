class RenameServiceUrl < ActiveRecord::Migration[5.2]
  def change
    rename_column :services, :service_image_url, :service_image
  end
end
