class AddPostingToResume < ActiveRecord::Migration
  def change
    add_reference :resumes, :posting, index: true
  end
end
