# == Schema Information
#
# Table name: v1_users
#
#  id              :integer          not null, primary key
#  fName           :string
#  lName           :string
#  username        :string
#  password_digest :string
#  role            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class V1::User < ApplicationRecord
  has_secure_password
  validates_presence_of :fName
  validates_presence_of :lName
  validates_presence_of :username
end
