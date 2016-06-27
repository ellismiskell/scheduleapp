class Course < ActiveRecord::Base
  has_many :assignments
  belongs_to :users

end
