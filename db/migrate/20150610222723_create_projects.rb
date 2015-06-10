class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :url
      t.string :description
      t.string :title

      t.timestamps
    end
  end
end
