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

class Subject < ActiveRecord::Base
  has_and_belongs_to_many :careers
  has_and_belongs_to_many :students
  has_and_belongs_to_many :teachers

  validates :code, presence: true, uniqueness: true
  validates :name, presence: true
  validates :credits, presence: true
end
