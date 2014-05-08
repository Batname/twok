class AddHeadliAndHeaddivAndMaindivToServices < ActiveRecord::Migration
  def change
    add_column :services, :head_li, :string
    add_column :services, :head_div, :string
    add_column :services, :main_div, :string
  end
end