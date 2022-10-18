puts "Creating companies..."
google = Company.create(name: "Google", founding_year: 1998)
facebook = Company.create(name: "Facebook", founding_year: 2004)
mifflin = Company.create(name: "Dunder Mifflin", founding_year: 2002)
enron = Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
rick = Dev.create(name: "Rick")
morty = Dev.create(name: "Morty")
meseeks = Dev.create(name: "Mr. Meseeks")
gazor = Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here

Freebie.create(item_name:"free ticket that can be reedeemed 1 time: the federation of ricks will not interfer for 24 hrs.",value: 200000000000, dev_id:rick.id, company_id:google.id)
Freebie.create(item_name:"jessica mug",value: 5, dev_id:morty.id, company_id:facebook.id)
Freebie.create(item_name:"paper",value: 35, dev_id:meseeks.id, company_id:mifflin.id)
Freebie.create(item_name:"pickle",value: 99, dev_id:gazor.id, company_id:enron.id)
Freebie.create(item_name:"multi dementional travel",value: 200, dev_id:rick.id, company_id:facebook.id)
Freebie.create(item_name:"backpack",value: 4, dev_id:meseeks.id, company_id:mifflin.id)
Freebie.create(item_name:"clone gun",value: 50, dev_id:rick.id, company_id:facebook.id)


puts "Seeding done!"
