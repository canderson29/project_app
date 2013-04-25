class Testimonial < ActiveRecord::Base
  attr_accessible :comment, :name, :service_id
  belongs_to :service
end
