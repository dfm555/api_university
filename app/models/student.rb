# == Schema Information
#
# Table name: students
#
#  id             :integer          not null, primary key
#  code           :string
#  identification :string
#  full_name      :string
#  date_of_birth  :date
#  email          :string
#  phone_number   :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Student < ActiveRecord::Base
  has_and_belongs_to_many :subjects
end
