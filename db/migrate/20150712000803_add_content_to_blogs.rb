class AddContentToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :content, :text
  end
end
