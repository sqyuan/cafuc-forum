class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |table|
      table.column :category_id, :integer
      table.column :user_id, :integer
      table.column :subject, :string, :limit => 255, :null => false
      table.column :body, :text
      table.column :view_times,:integer,:default=>0
      table.column :if_top, :bool
      table.column :if_could_reply, :bool,:default=>true
      table.column :root_id, :integer, :null => false, :default => 0
      table.column :parent_id, :integer, :null => false, :default => 0
      table.column :lft, :integer, :null => false, :default => 0
      table.column :rgt, :integer, :null => false, :default => 0
      table.column :depth, :integer, :null => false, :default => 0
      table.column :created_at, :timestamp, :null => false
      table.column :updated_at, :timestamp, :null => false
    end
  end

  def self.down
    drop_table :posts
  end
end
