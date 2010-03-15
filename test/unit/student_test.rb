# == Schema Information
#
# Table name: students
#
#  id                :integer(4)      not null, primary key
#  username          :string(255)
#  first_name        :string(255)
#  last_name         :string(255)
#  email             :string(255)
#  phone             :string(255)
#  company           :string(255)
#  city              :string(255)
#  state_id          :integer(4)
#  zip               :string(255)
#  crypted_password  :string(255)
#  password_salt     :string(255)
#  persistence_token :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#

require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
