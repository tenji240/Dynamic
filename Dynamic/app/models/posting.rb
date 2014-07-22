class Posting < ActiveRecord::Base
  belongs_to :company
  has_many :resumes
end
