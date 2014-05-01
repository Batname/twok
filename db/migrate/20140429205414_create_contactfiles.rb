class CreateContactfiles < ActiveRecord::Migration
  def change
    create_table :contactfiles do |t|
      t.string :attachment

      t.timestamps
    end
  end
end
