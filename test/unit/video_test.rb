# == Schema Information
#
# Table name: videos
#
#  id                       :integer(4)      not null, primary key
#  title                    :string(255)
#  description              :text
#  permalink                :string(255)
#  video_type_id            :integer(4)
#  third_party              :boolean(1)
#  third_party_url          :string(255)
#  created_at               :datetime
#  updated_at               :datetime
#  video_file_name          :string(255)
#  video_content_type       :string(255)
#  video_file_size          :integer(4)
#  video_updated_at         :datetime
#  video_thumb_file_name    :string(255)
#  video_thumb_content_type :string(255)
#  video_thumb_file_size    :integer(4)
#  video_thumb_updated_at   :datetime
#

require 'test_helper'

class VideoTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
