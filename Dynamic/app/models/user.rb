class User < ActiveRecord::Base
    has_many :educations
    has_many :experiences
    has_many :skills
end
