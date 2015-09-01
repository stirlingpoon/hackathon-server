class CreateUserProfile < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.string :ext_directory_key
      t.string :ext_photo_link

      t.timestamps null: false
    end

    create_table :skills do |t|
      t.string :name
      t.string :description
    end

    create_table :member_skills do |t|
      t.belongs_to :member, index: true
      t.belongs_to :skill, index: true
      t.decimal :level

      t.timestamps null: false
    end
  end
end
