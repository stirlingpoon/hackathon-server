class Member < ActiveRecord::Base

  has_many :member_skills
  has_many :skills, through: :member_skills

  has_many :skill_votes_placed, class_name: SkillVote, foreign_key: :voting_member_id
  has_one :member_directory_attributes

end
