class CreateKitchens < ActiveRecord::Migration
  def change
    create_table :kitchens do |t|
      t.string  :name
      t.string  :type
      t.text    :description
      t.boolean :featured, default: false

      # paperclip image
      t.string   :image_file_name
      t.string   :image_content_type
      t.integer  :image_file_size
      t.datetime :image_updated_at

      t.timestamps
    end
  end
end
