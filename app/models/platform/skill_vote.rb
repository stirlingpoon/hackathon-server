class SkillVote < ActiveRecord::Base

  belongs_to :target_member_skill, class_name: MemberSkill
  belongs_to :voting_member, class_name: Member

end