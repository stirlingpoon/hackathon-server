class CreateVoting < ActiveRecord::Migration
  def change
    create_table :skill_votes do |t|
      t.belongs_to :voting_member, index: true
      t.belongs_to :target_member_skill, index: true
      t.integer :vote, default: 1 # TODO - perhaps remove if always vote == 1

      t.timestamps null: false
    end
  end
end
