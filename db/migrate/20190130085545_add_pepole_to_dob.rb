class AddPepoleToDob < ActiveRecord::Migration[5.2]
  def change
    add_reference :dobs, :person, foreign_key: true
  end
end
