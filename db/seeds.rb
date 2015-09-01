# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# require 'factory_girl'
require 'factory_girl_rails'

include FactoryGirl::Syntax::Methods

class Seeds

  def self.generate
    @skills = [
        create(:skill, :java),
        create(:skill, :concurrency),
        create(:skill, :fix),
        create(:skill, name: 'C++'),
        create(:skill, name: 'Analysis'),
        create(:skill, name: 'Angular.JS')
    ]

    create_member('John', 'Smith', [1, 2, 3])
    create_member('Mike', 'Johns', [2, 4, 6])
    create_member('Peter', 'Stevens', [3, 4, 5])
    create_member('Sam', 'Peters', [1, 3, 6])
  end

  def self.create_member(first_name, last_name, skill_indices)
    email = "#{first_name.downcase}.#{last_name.downcase}@credit-suisse.com"
    m = build(:member, first_name: first_name, last_name: last_name, email: email)
    skill_indices.each { |i| m.skills << @skills[i-1] }
    m.save!
  end

end

Seeds.generate
