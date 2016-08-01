# == Schema Information
#
# Table name: careers
#
#  id               :integer          not null, primary key
#  code             :string
#  name             :string
#  quantity_credits :integer          default(1)
#  amount           :decimal(, )      default(0.0)
#  semester         :integer          default(1)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class CareerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
