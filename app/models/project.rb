# == Schema Information
#
# Table name: projects
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  service_id  :integer
#  start_date  :date
#  end_date    :date
#

class Project < ActiveRecord::Base
  attr_accessible :start_date, :end_date, :description, :name

  belongs_to :service
  has_many :testimonials

  validates :name, presence: true
  validates :description, presence: true
  validates :start_date, presence: true, :unless => :valid_date?
  
  private
  def valid_date?
  	self.start_date < self.end_date
  end
end
