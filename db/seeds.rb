# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
plan_1 = Plan.create!({ carrier: "Aetna", name: "Bronze Basic HMO", out_of_pocket_max: "5000", deductible: "30"})
plan_2 = Plan.create!({ carrier: "Blue Cross", name: "Gold Basic HMO", out_of_pocket_max: "4000", deductible: "300"})
plan_3 = Plan.create!({ carrier: "Kaiser", name: "Platinum", out_of_pocket_max: "1000", deductible: "20"})
plan_4 = Plan.create!({ carrier: "Aetna", name: "Silver Basic HMO", out_of_pocket_max: "4000", deductible: "30"})

plans = [plan_1, plan_2, plan_3, plan_4]

(1..100).each do |age|
  (1..1).each do |region|
    plans.each do |plan|
      rand_price = rand(500).to_i
      price = Price.create!({plan_id: plan.id, region: region, age: age, monthly_premium: rand_price})
    end
  end
end

zipcodes = [94150, 94606, 92116, 94610, 95221, 95222, 95223, 95224]

zipcodes.each do |zip_code|
  Region.create!({zip_code: zip_code, region: 1})
end
