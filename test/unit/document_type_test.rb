# == Schema Information
#
# Table name: document_types
#
#  id                 :integer(4)      not null, primary key
#  document_type      :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#  document_extension :string(255)
#

require 'test_helper'

class DocumentTypeTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
