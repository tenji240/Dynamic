class AddResumeToEducation < ActiveRecord::Migration
  def change
    add_reference :educations, :resume, index: true
  end
end
