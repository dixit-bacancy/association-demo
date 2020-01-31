class AddDobToPeople < ActiveRecord::Migration[5.2]
  def change
    add_reference :person, :dob, foreign_key: true
  end
end 
