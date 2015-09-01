class SkillsSerializer < ActiveModel::Serializer

self.root = 'skills'

  attributes :id, :name, :description

end