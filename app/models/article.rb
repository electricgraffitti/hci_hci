# == Schema Information
#
# Table name: articles
#
#  id               :integer(4)      not null, primary key
#  title            :string(255)
#  description      :text
#  article_type_id  :integer(4)
#  keywords         :string(255)
#  meta_description :text
#  permalink        :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#  third_party      :boolean(1)
#  third_party_url  :string(255)
#

class Article < ActiveRecord::Base
  
  belongs_to :article_type
  after_update :save_assets
  
  has_many :assets, :as => :attachable
  has_many :coverflows, :as => :cflow, :class_name => "Coverflow"
  accepts_nested_attributes_for :coverflows, :allow_destroy => true
  
  # Validations
  validates_presence_of :title, :description, :permalink
  
  # Thinking Sphinx Indexes
  define_index do
    indexes description
    indexes title
  end
  
  # RedCloth (textilize)
  acts_as_textiled  :description
  
  # Named Scopes
  named_scope :small_list, lambda { |limit| {:include => [:assets], :limit => limit}}
  named_scope :type, lambda { |typea| { :include => [:article_type, :assets], :conditions => ['article_types.article_type = ?', typea], :order => "articles.created_at DESC"}}
  named_scope :last_created, :order => "created_at DESC"
  
  #============================= Class Methods ==================================#
  
  # Sets Permalink Routes
  def to_param
    "#{id}-#{permalink}"
  end
  
  # Sets up the Pagination call Article.list(number, params[:page])
  def self.list(count, page, typea, typeb = nil)
    find(:all, :include => [:article_type, :assets], :conditions => ['article_types.article_type = ? OR article_types.article_type = ?', typea, typeb])
    paginate :per_page => count, :page => page, :order => "created_at DESC"
  end
  
  #pulls the assets from the form
  def attachments=(atts)
    atts.each do |attachment|
      if attachment[:id].blank?
        assets.build(attachment)
      else
        asset = assets.detect { |a| a.id == attachment[:id].to_i }
        asset.attributes = attachment
      end
    end
  end
  
  def save_assets
    assets.each do |a|
      a.save(false)
    end
  end
  
end
