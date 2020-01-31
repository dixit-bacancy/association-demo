class Age < ApplicationRecord
    has_one :person
    has_one :dob,:through => :person
end
