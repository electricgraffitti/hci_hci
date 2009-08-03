# == Schema Information
#
# Table name: employees
#
#  id                  :integer(4)      not null, primary key
#  username            :string(255)
#  first_name          :string(255)
#  last_name           :string(255)
#  email               :string(255)
#  last_login_at       :datetime
#  department_id       :integer(4)
#  ext                 :string(255)
#  home_phone          :string(255)
#  cell_phone          :string(255)
#  home_fax            :string(255)
#  role_id             :integer(4)
#  created_at          :datetime
#  updated_at          :datetime
#  crypted_password    :string(255)
#  password_salt       :string(255)
#  persistence_token   :string(255)
#  avatar_file_name    :string(255)
#  avatar_content_type :string(255)
#  avatar_file_size    :integer(4)
#  avatar_updated_at   :datetime
#

require 'test_helper'

class EmployeeTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
