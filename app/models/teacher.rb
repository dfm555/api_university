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
  has_and_belongs_to_many :careers
  has_and_belongs_to_many :subjects

  validates :code, presence: true, uniqueness: true
  validates :identification, presence: true, uniqueness: true
  validates :full_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates :rol_id, presence: true

end
