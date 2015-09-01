require 'lib/repos/repo_mixin'

class MemberRepo
  extend RepoMixin
  adapter Member

  def self.find_by_skill(skill)
    @adapter.joins(:skills).where(skills: {name: skill})
  end
end