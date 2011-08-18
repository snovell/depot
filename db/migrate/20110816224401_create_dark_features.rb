class CreateDarkFeatures < ActiveRecord::Migration
  def self.up
    create_table :dark_features do |t|
      t.string :key
      t.boolean :enabled, :default => false

      t.timestamps
    end
  end

  def self.down
    drop_table :dark_features
  end
end
