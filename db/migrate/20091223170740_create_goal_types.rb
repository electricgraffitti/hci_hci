class CreateGoalTypes < ActiveRecord::Migration
  def self.up
    create_table :goal_types do |t|
      t.string :goal_type

      t.timestamps
    end
    GoalType.create :goal_type => "Stop Fraud"
    GoalType.create :goal_type => "Improve Accuracy"
    GoalType.create :goal_type => "Save Money"
    GoalType.create :goal_type => "Save Time"
    GoalType.create :goal_type => "Ensure Compliance"
    GoalType.create :goal_type => "Differentiate"
  end

  def self.down
    drop_table :goal_types
  end
end
