class AddAgeToPerson < ActiveRecord::Migration[5.2]
  def change
    add_reference :people, :age, foreign_key: true
  end
end
