class Alter < ActiveRecord::Migration
  def self.up
    rename_column :posts,:category_id,:category
  end

  def self.down
    rename_column :posts,:category,:category_id
  end
end
