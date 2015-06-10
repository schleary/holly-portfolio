class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.datetime :date

      t.timestamps
    end
  end
end
