class Dob < ApplicationRecord
    # has_many :persons
    # has_many :ages,:through => :persons
    belongs_to :person
end
