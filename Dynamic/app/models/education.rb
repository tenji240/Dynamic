class Education < ActiveRecord::Base
  belongs_to :resume
  belongs_to :user
end
