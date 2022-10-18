class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies

    # Creates a new freebie associated with the dev, item name and value that is put in. Company is self right now. 
    
    def give_freebie(dev,item_name,value)
        Freebie.create(item_name: item_name, value: value, dev_id:dev , company:self)
    end

    # Puts all of the companies in order of founding year and returns the first search:

    def self.oldest_company
        Company.all.order(:founding_year).first
    end

end
