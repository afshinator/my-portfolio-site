class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.string :blurb
      t.string :slug
      t.string :image_url

      t.timestamps
    end
    
    add_index :articles, :slug, :unique => true
  end
end
