class AddUserToSkill < ActiveRecord::Migration
  def change
    add_reference :skills, :user, index: true
  end
end
