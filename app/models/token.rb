# == Schema Information
#
# Table name: tokens
#
#  id                 :integer          not null, primary key
#  name               :string
#  token              :string
#  number_of_requests :integer          default(0)
#  status             :boolean          default(TRUE)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Token < ActiveRecord::Base
end
