class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies

    # creates a freebie but not quite sure how to test:
    
    def give_freebie(dev,item_name,value)
        Freebie.create(item_name: item_name, value: value, dev_id:dev, company_id:self)
    end

    # searches for oldest company by selecting and ordering them by founding year, then returning the first response:

    def self.oldest_company
        Company.all.order(:founding_year).first
    end


end
