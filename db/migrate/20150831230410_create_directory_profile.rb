class CreateDirectoryProfile < ActiveRecord::Migration
  def change
    create_table :member_directory_profiles do |t|
      t.belongs_to :member
      t.integer :uid

      # store some attributes here to work with initially for basic "peer search" UC
      t.string :department
      t.string :org_unit
      t.string :attr_1
      t.string :attr_2
    end
  end
end
