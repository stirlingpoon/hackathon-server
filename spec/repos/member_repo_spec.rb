require 'rails_helper'
require 'lib/repos/member_repo'
require 'lib/repos/member_repo'
require 'db/seeds'

describe MemberRepo do

  it 'can search by' do
    Seeds.generate

    found = MemberRepo.find_by_skill('JAVA')
    users =[
        MemberRepo.find(1),
        MemberRepo.find(4)
    ]

    expect(found.to_json).to eq(users.to_json)
  end

end
