class CreatePostings < ActiveRecord::Migration
  def change
    create_table :postings do |t|
      t.string :skills, :array => 'true', :length => 30 #array of strings
      t.text :description
      t.string :experience
      t.string :postition

      t.timestamps
    end
  end
end
