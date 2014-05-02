class AddTitleToServices < ActiveRecord::Migration
  def change
    add_column :services, :title, :string
  end
end
