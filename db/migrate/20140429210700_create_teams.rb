class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.integer :position
      t.string :name
      t.string :image
      t.boolean :visible
      t.text :content

      t.timestamps
    end
  end
end
