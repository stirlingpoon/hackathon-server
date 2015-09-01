require 'rails_helper'
require 'lib/repos/member_repo'

describe Member do

  it 'can be created with full profile' do
    member = create(:member, :full)
    found = MemberRepo.find(1)

    expect(found).to have(2).member_skills
    expect(found).to have(2).skills
  end

  it 'can be created from factory with specific skill' do
    skill_1 = build(:skill, :java)
    # build(:member_skill)
    member = build(:member)
    member.skills << skill_1
    member.save!

    found = MemberRepo.find(1)

    expect(found).to have(1).member_skill
    expect(found).to have(1).skill

  end

  it 'can assign a vote to another member skills' do
    member_1 = build(:member, :full)
    member_2 = build(:member, :first_name => 'Peter')

    member_1.member_skills[0].skill_votes << build(:skill_vote, voting_member: member_2, vote: 2)
    member_1.member_skills[1].skill_votes << build(:skill_vote, voting_member: member_2, vote: 1)
    member_1.save!

    found = MemberRepo.find(1)
    expect(found).to have(2).member_skills
    expect(found.member_skills[0]).to have(1).skill_vote
    expect(found.member_skills[1]).to have(1).skill_vote

    member_3 = build(:member, :first_name => 'Simon')
    member_1.member_skills[0].skill_votes << build(:skill_vote, voting_member: member_3, vote: 2)
    member_1.save!

    found = MemberRepo.find(1)
    expect(found.member_skills[0]).to have(2).skill_votes

    expect(member_2).to have(2).skill_votes_placed
    expect(member_3).to have(1).skill_votes_placed
    expect(member_1).to have(0).skill_votes_placed

  end

end