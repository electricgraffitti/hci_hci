# == Schema Information
#
# Table name: coverflows
#
#  id                 :integer(4)      not null, primary key
#  cflow_id           :integer(4)
#  cflow_type         :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#  cover_file_name    :string(255)
#  cover_content_type :string(255)
#  cover_file_size    :integer(4)
#  cover_updated_at   :datetime
#

require 'test_helper'

class CoverflowTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
