# == Schema Information
#
# Table name: banners
#
#  id                  :integer(4)      not null, primary key
#  headline            :string(255)
#  content             :text
#  secondary_banners   :boolean(1)
#  created_at          :datetime
#  updated_at          :datetime
#  banner_file_name    :string(255)
#  banner_content_type :string(255)
#  banner_file_size    :integer(4)
#  banner_updated_at   :datetime
#  button_color        :string(255)
#  button_position     :string(255)
#  button_text         :string(255)
#  button_url          :string(255)
#

class Banner < ActiveRecord::Base

   # Validations
   validates_presence_of :headline, :content, :button_color, :button_position, :button_text, :button_url

   # PaperClip
   has_attached_file :banner,
                     :styles => { :main => "928x483#", :micro => "429x223#"},
                     :url => "/banners/:id/:style/:basename.:extension",
                     :path => ":rails_root/public/banners/:id/:style/:basename.:extension"

   #============================= Class Methods ==================================#

   def self.random
     ids = connection.select_all("SELECT id FROM banners")
     find(ids[rand(ids.length)]["id"].to_i) unless ids.blank?
   end
   
end
