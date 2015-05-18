class AddTimestamps < ActiveRecord::Migration
  def change
    add_column :industries, :created_at, :datetime
    add_column :industries, :updated_at, :datetime
  end
end
