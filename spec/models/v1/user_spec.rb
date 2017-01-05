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

require 'rails_helper'

RSpec.describe V1::User, type: :model do
  it 'should have secure password' do
    should have_secure_password
  end
  it 'should validate presence of the `fname` column' do
    should validate_presence_of :fName
  end
  it 'should validate presence of the `lName` column' do
    should validate_presence_of :lName
  end
   it 'should validate presence of the `username` column' do
    should validate_presence_of :username
   end
end
