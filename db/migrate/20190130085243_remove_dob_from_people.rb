class RemoveDobFromPeople < ActiveRecord::Migration[5.2]
  def change
    remove_reference :people, :dob, foreign_key: true
  end
end
