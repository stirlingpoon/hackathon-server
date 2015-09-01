class MemberDetailSerializer < ActiveModel::Serializer

  self.root = 'details'

  attributes :id, :name, :email, :password, :ext_directory_key, :ext_photo_link, :skills

  def name
    "#{object.first_name} #{object.last_name}"
  end

  def skill
    object.member_skills.map do |ms|
      {
          name: ms.skill.name,
          description: ms.skill.description,
          rating: ms.level
      }
    end
  end

end