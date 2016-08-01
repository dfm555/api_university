# == Schema Information
#
# Table name: subjects
#
#  id          :integer          not null, primary key
#  code        :string
#  name        :string
#  credits     :integer          default(0)
#  cycle       :string
#  room        :string
#  description :text
#  hours       :integer          default(0)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class SubjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
