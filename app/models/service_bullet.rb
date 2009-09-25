class ServiceBullet < ActiveRecord::Base
  
  # associations
  belongs_to :service
  
  # validations
  validates_presence_of :bullet_point
  # named_scopes
  
  #--------------Class Methods--------------#
  
  
  
end
