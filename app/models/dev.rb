class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    # returns a boolean with ? autmoatically

    def received_one?(item_name)
       self.freebies.any? do |freebie|
        freebie.item_name == item_name
       end
    end

    def give_away(freebie,dev)
        # freebie.update(dev: dev) freebie.dev != dev.id
        # self refrences the Dev who is giving the freebie away
        # freebie = the instance that we are about to modify the Dev to.
        # dev is an instance that refrences the dev that is receiving the freebie. 

        # check if the freebie belongs to self
        # check if freebie.dev matches self

        if freebie.dev == self
            freebie.update(dev: dev)
        else 
            "This item is not owned by #{self.name}"
        end
        
    end
    # To test: first make sure you can access your Dev.all and Freebie.all
        # first=Dev.first -- save your instance to a variable.
        # free1=Freebie.first --save your instance of a freebie to a variable as well
        # dev2=Dev.second -- save the Dev instance we want to not change
        # first.give_away(free1,dev2)
        # Should change the above from Rick to the Morty Dev. 
end
