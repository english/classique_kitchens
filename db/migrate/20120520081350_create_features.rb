class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.text :content

      t.timestamps
    end
  end
end
