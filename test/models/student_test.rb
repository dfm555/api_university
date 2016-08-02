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

require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
