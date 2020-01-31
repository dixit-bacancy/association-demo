class Person < ApplicationRecord
    belongs_to :age
    has_one :dob
end
