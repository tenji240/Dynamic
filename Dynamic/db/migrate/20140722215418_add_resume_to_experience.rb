class AddResumeToExperience < ActiveRecord::Migration
  def change
    add_reference :experiences, :resume, index: true
  end
end
