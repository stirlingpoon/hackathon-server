FactoryGirl.define do

  factory :member do
    first_name 'Spencer'
    last_name 'Goh'
    email 'spencer.goh@credit-suisse.com'
    password 'password'

    trait :full do
      after(:build) do |member|
        # if member.member_skills.empty?
          member.member_skills << build(:member_skill, member: member, skill: build(:skill, :java))
          member.member_skills << build(:member_skill, member: member, skill: build(:skill, :concurrency))
        # end
      end
    end
  end

  factory :member_skill do
  end

  factory :skill do
    trait :java do
      name 'JAVA'
      description 'Java Programming Skills'
    end

    trait :concurrency do
      name 'CONCURRENCY'
      description 'Concurrent programming techniques'
    end

    trait :fix do
      name 'FIX'
      description 'FIX protocol'
    end
  end

  factory :skill_vote do
  end

end
