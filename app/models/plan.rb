class Plan < ActiveRecord::Base
  def calculate_price(ages, zip_codes)
    sum = 0
    ages.each_with_index do |age, idx|
      zip_code = zip_codes[idx]
      region = Region.where("zip_code = #{zip_code}").first.region
      price = Price.where("plan_id = #{self.id} AND region = #{region} AND age = #{age}").first
      sum += price.monthly_premium
    end

    sum
  end
end
