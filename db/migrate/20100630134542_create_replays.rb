class CreateReplays < ActiveRecord::Migration
  def self.up
    create_table :replays do |t|
 t.string :replay
 t.integer :comment_id
      t.timestamps
    end
  end

  def self.down
    drop_table :replays
  end
end
