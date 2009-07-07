# == Schema Information
#
# Table name: brochures
#
#  id                    :integer(4)      not null, primary key
#  title                 :string(255)
#  description           :text
#  permalink             :string(255)
#  keywords              :string(255)
#  service_id            :integer(4)
#  created_at            :datetime
#  updated_at            :datetime
#  brochure_file_name    :string(255)
#  brochure_content_type :string(255)
#  brochure_file_size    :integer(4)
#  brochure_updated_at   :datetime
#

require 'test_helper'

class BrochureTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
