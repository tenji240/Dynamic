class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :career_statement

      t.timestamps
    end
  end
end
