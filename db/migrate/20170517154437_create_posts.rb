class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|

      t.timestamps null: false
      
      t.string :title
      t.text :content
    end
  end
end
