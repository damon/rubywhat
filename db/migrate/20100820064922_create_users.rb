class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.integer :twitter_user_id
      t.string :screen_name
      
      t.string :name
      t.string :location
      t.string :url
      t.string :description
      t.string :profile_image_url
            
      t.string :oauth_token
      t.string :oauth_token_secret

      t.boolean :approved
      t.datetime :stamp
    end
    
    add_column :resources, :user_id, :integer
  end

  def self.down
    drop_table :users
    remove_column :resources, :user_id
  end
end
