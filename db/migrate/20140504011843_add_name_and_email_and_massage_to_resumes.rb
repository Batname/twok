class AddNameAndEmailAndMassageToResumes < ActiveRecord::Migration
  def change
    add_column :resumes, :email, :string
    add_column :resumes, :massage, :string
  end
end
