class AddKitchenIdToFeatures < ActiveRecord::Migration
  def change
    add_column :features, :kitchen_id, :integer
  end
end
