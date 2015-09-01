class SkillsController < ApplicationController
  def index
     skills = Skill.all
     render json: skills, status: :ok, root: 'skills', each_serializer: SkillsSerializer
  end
end