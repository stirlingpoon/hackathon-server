class MemberSerializer < ActiveModel::Serializer
  self.root = 'member'

  attributes :id, :name

  def name
    "#{object.first_name} #{object.last_name}"
  end

end