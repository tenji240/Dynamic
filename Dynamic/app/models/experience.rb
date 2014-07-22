class Experience < ActiveRecord::Base
  belongs_to :resume
  belongs_to :user
end
