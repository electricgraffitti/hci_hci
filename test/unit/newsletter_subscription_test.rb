# == Schema Information
#
# Table name: newsletter_subscriptions
#
#  id                  :integer(4)      not null, primary key
#  email               :string(255)
#  active_subscription :boolean(1)
#  created_at          :datetime
#  updated_at          :datetime
#

require 'test_helper'

class NewsletterSubscriptionTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
