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

FactoryGirl.define do
  factory :v1_user, class: 'V1::User' do
    fName "MyString"
    lName "MyString"
    username "MyString"
    password_digest "MyString"
    role "MyString"
  end
end
