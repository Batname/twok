class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer "service_id"
      t.integer :position
      t.string :name
      t.string :image
      t.string :permalink
      t.boolean :visible
      t.text :content

      t.timestamps
    end
    add_index("projects", "service_id")
    add_index("projects", "permalink")
  end
end
