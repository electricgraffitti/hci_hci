# == Schema Information
#
# Table name: documents
#
#  id               :integer(4)      not null, primary key
#  title            :string(255)
#  description      :text
#  document_type_id :integer(4)
#  keywords         :string(255)
#  permalink        :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#

require 'test_helper'

class DocumentTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
