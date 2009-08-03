# == Schema Information
#
# Table name: roles
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  role_type  :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Role < ActiveRecord::Base
end
