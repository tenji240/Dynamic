class Resume < ActiveRecord::Base
  belongs_to :posting
  has_many :educations
  has_many :experiences
  has_many :skills
end
