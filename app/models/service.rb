# == Schema Information
#
# Table name: services
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Service < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :projects, foreign_key: 'service_id'
  has_many :testimonials, foreign_key: 'service_id'
  
end
