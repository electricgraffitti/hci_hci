class CreateVideoTypes < ActiveRecord::Migration
  def self.up
    create_table :video_types do |t|
      t.string :video_type

      t.timestamps
    end
    VideoType.create :video_type => "Webinar"
    VideoType.create :video_type => "Newscast"
    VideoType.create :video_type => "Promotional"
    VideoType.create :video_type => "Internal"
  end
  def self.down
    drop_table :video_types
  end
end
