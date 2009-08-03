# == Schema Information
#
# Table name: ticket_updates
#
#  id          :integer(4)      not null, primary key
#  comment     :text
#  employee_id :integer(4)
#  ticket_id   :integer(4)
#  created_at  :datetime
#  updated_at  :datetime
#

class TicketUpdate < ActiveRecord::Base

  belongs_to :employee
  belongs_to :ticket, :class_name => 'Ticket'
  accepts_nested_attributes_for :ticket, :allow_destroy => true
  
  # RedCloth (textilize)
  acts_as_textiled  :comment
  
  # Validations
  validates_presence_of :comment
  
  # Named Scopes
  named_scope :small_list, lambda { |limit| {:limit => limit }}
  named_scope :listed, :order => "created_at DESC"
  
end
