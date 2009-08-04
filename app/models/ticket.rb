# == Schema Information
#
# Table name: tickets
#
#  id               :integer(4)      not null, primary key
#  subject          :string(255)
#  description      :text
#  due_date         :date
#  ticket_status_id :integer(4)
#  priority_id      :integer(4)
#  created_at       :datetime
#  updated_at       :datetime
#

class Ticket < ActiveRecord::Base
  
  # Associations
  has_many :owner, :class_name => 'Owner'
  accepts_nested_attributes_for :owner, :allow_destroy => true
  has_one :employee, :through => :owner
  
  belongs_to :ticket_status
  belongs_to :priority
  
  has_many :ticket_assignments, :class_name => 'TicketAssignment'
  accepts_nested_attributes_for :ticket_assignments, :allow_destroy => true
  has_many :employees, :through => :ticket_assignments
  
  has_many :ticket_assets, :as => :attachable
  
  has_many :ticket_updates, :class_name => 'TicketUpdate'
  accepts_nested_attributes_for :ticket_updates, :allow_destroy => true
  
  # Thinking Sphinx Indexes
  define_index do
    indexes description
    indexes subject
  end
  
  # RedCloth (textilize)
  acts_as_textiled  :description
  
  # Validations
  validates_presence_of :subject, :description, :due_date
  
  # Named Scopes
  named_scope :small_list, lambda { |limit| {:limit => limit }}
  named_scope :priority_listed, :include => :priority, :order => "priorities.id ASC"
  named_scope :last_created, :order => "created_at DESC"
  named_scope :owned_tickets, lambda { |employee| {:include => :owner, :conditions => ["owners.employee_id = ?", employee.id]}}
  named_scope :not_complete, :include => :ticket_status, :conditions => ["ticket_statuses.status_type != ?", "complete"]
  named_scope :complete, :include => :ticket_status, :conditions => ["ticket_statuses.status_type = ?", "complete"]
  named_scope :overdue, :include => :ticket_status, :conditions => ["due_date < ?", Time.now]
  named_scope :assigned_tickets, lambda { |employee| {:include => :employees, :conditions => ["ticket_assignments.employee_id = ?", employee.id]}}
  named_scope :open_tickets, :include => :ticket_status, :conditions => ["ticket_statuses.status_type != ?", "closed"]
  named_scope :not_closed, :include => :ticket_status, :conditions => ["ticket_statuses.status_type != ?", "closed"]
  # named_scope :department, lambda { |department| {:include => :department, :conditions => ['departments.name = ?', department]}}
  
  #============================= Class Methods ==================================#
  
  #pulls the assets from the form
  def attachments=(attachments)
    attachments.each do |attachment|
      ticket_assets.build(attachment)
    end
  end
  
end
