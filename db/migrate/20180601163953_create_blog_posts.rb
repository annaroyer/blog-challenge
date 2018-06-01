class CreateBlogPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :blog_posts do |t|
      t.string :title
      t.text :article
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end