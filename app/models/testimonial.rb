class Testimonial < ActiveRecord::Base
  attr_accessible :comment, :name, :project_id
  belongs_to :project
end
