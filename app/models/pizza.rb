class Pizza < ApplicationRecord
    # this table contains only pizza name i am considering this for large systems
    # for small system we can use this field in another table 

    #associations
    has_many :pizza_prices

    # validations
    validates :name, uniqueness: true
end