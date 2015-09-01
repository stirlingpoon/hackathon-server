require 'lib/repos/member_repo'
require 'app/serializers/member_detail_serializer'

class MembersController < ApplicationController
  def index
    members = MemberRepo.all
    render json: members, status: :ok, root: 'members', each_serializer: MemberDetailSerializer
  end

  # def create
  #   response.headers["Content-Type"] = "application/json"
  #   render nil
  # end

  def show
    members = MemberRepo.find(params[:id])
    render json: members, status: :ok, root: 'members', serializer: MemberDetailSerializer
  end

  # def update
  #   response.headers["Content-Type"] = "application/json"
  #   render nil
  # end

  # def next
  #   members = MemberRepo.all.sort_by &:id
  # end
end
