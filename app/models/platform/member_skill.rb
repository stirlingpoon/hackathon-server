class MemberSkill < ActiveRecord::Base

  belongs_to :member
  belongs_to :skill

  has_many :skill_votes, foreign_key: :target_member_skill_id
end