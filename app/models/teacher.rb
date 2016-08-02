# == Schema Information
#
# Table name: teachers
#
#  id             :integer          not null, primary key
#  code           :string
#  identification :string
#  full_name      :string
#  date_of_birth  :date
#  email          :string
#  office         :integer
#  phone_number   :integer
#  amount_hour    :decimal(, )      default(0.0)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Teacher < ActiveRecord::Base
  has_and_belongs_to_many :career
  has_and_belongs_to_many :subject
end
