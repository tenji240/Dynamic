class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :position
      t.datetime :start_date
      t.datetime :end_date
      t.text :description
      t.integer :rank

      t.timestamps
    end
  end
end
