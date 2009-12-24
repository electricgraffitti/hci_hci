class CreateClaimTypes < ActiveRecord::Migration
  def self.up
    create_table :claim_types do |t|
      t.string :claim_type

      t.timestamps
    end
    ClaimType.create :claim_type => "Professional"
    ClaimType.create :claim_type => "Facility"
    ClaimType.create :claim_type => "Dental"
    ClaimType.create :claim_type => "Pharmacy"
    ClaimType.create :claim_type => "Oncology"
    ClaimType.create :claim_type => "Vision"
  end

  def self.down
    drop_table :claim_types
  end
end
