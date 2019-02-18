class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :title
      t.string :city
      t.string :event_type
      t.boolean :group
      t.integer :price
      t.text :details
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
