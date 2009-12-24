class CreateBusinessTypes < ActiveRecord::Migration
  def self.up
    create_table :business_types do |t|
      t.string :business_type

      t.timestamps
    end
    BusinessType.create :business_type => "Health Plan"
    BusinessType.create :business_type => "Public Plan"
    BusinessType.create :business_type => "Dental Plan"
    BusinessType.create :business_type => "TPA"
    BusinessType.create :business_type => "Taft-Hartley"
    BusinessType.create :business_type => "Employer Group"
  end

  def self.down
    drop_table :business_types
  end
end
