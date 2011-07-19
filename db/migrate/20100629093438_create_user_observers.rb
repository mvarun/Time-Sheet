class CreateUserObservers < ActiveRecord::Migration
  def self.up
    create_table :user_observers do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :user_observers
  end
end