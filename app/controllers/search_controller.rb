require 'lib/repos/member_repo'

class SearchController < ApplicationController

  def skill
    member = MemberRepo.find_by_skill(params[:id])
    render json: member, status: :ok, root: 'members', each_serializer: MemberDetailSerializer
  end

  def department
  end

end
