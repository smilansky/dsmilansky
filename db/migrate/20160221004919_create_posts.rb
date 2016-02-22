class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :author
      t.text :content
      t.text :markdown_content
      t.string :slug, :unique => true

      
      t.timestamps
    end
  end
end
