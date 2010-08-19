class CreateResources < ActiveRecord::Migration
  def self.up
    create_table :resources do |t|
      t.datetime :stamp
      t.string :description
      t.string :url
      t.integer :category_id
    end
  end

  def self.down
    drop_table :resources
  end
end
