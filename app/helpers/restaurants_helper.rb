module RestaurantsHelper
  def convert_list_categories restaurant_categories
    category_arr = []
    restaurant_categories.each do |category|
      category_arr << category.category.name
    end
    category_arr.join(" - ")
  end

  def float_to_time time
    hour = (time.divmod 1)[0]
    min = (time.divmod 1)[1] * 60
    hour_s = hour.to_s
    hour_s = "0" + hour_s if hour < 10
    if min == 0
      hour_s + ":00"
    else
      hour_s + ":" + min.floor.to_s
    end
  end
end
