require_relative 'plan'


plans = Plan.all

ages = [25, 30, 23, 45]
zip_codes = [94150, 94606, 92116, 94610]

plans.each do |plan|
  price = plan.calculate_price(ages, zip_codes)
end
