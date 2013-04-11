# == Schema Information
#
# Table name: projects
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  date        :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#



class Project < ActiveRecord::Base
  attr_accessible :date, :description, :name

  belongs_to :service
end
