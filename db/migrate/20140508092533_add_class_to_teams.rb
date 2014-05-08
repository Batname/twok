class AddClassToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :teamclass, :string
  end
end
