class CreateDobs < ActiveRecord::Migration[5.2]
  def change
    create_table :dobs do |t|
      t.date :date

      t.timestamps
    end
  end
end
