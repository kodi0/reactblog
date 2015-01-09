class CreatePost < ActiveRecord::Migration
  def change
    create_table :posts do |t|
         t.string :name
         t.text   :body
         t.datetime :created_at
         t.datetime :updated_at
         t.integer :user_id
       end
  end
end
