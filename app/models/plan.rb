class Plan < ActiveRecord::Base
  def calculate_price(ages, zip_codes)
    sum = 0
    ages.each_with_index do |age, idx|
      zip_code = zip_codes[idx]
      region = Region.find_by(zip_code: zip_code).region
      price = Price.find_by(plan_id: self.id, region: region, age: age)
      sum += price.monthly_premium
    end

    sum
  end
end
