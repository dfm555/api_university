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

class Career < ActiveRecord::Base
  has_and_belongs_to_many :subjects

  validates :code, presence: true, uniqueness: true
  validates :name, presence: true
  validates :quantity_credits, presence: true
  validates :semester, presence: true
end
