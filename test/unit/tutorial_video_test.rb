require 'test_helper'

class TutorialVideoTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: tutorial_videos
#
#  id                                :integer(4)      not null, primary key
#  title                             :string(255)
#  description                       :text
#  permalink                         :string(255)
#  created_at                        :datetime
#  updated_at                        :datetime
#  tutorial_video_file_name          :string(255)
#  tutorial_video_content_type       :string(255)
#  tutorial_video_file_size          :integer(4)
#  tutorial_video_updated_at         :datetime
#  tutorial_video_thumb_file_name    :string(255)
#  tutorial_video_thumb_content_type :string(255)
#  tutorial_video_thumb_file_size    :integer(4)
#  tutorial_video_thumb_updated_at   :datetime
#
