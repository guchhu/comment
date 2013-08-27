class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :address
      t.string :email
      t.integer :experience
      t.string :tech_known

      t.timestamps
    end
  end
end
