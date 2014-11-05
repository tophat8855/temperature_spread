class ArrayDataAnalysis

  def initialize(data)
    @data = data
  end

  def lowest_temperature
    low_temp_array = []
    @data.each {|day| low_temp_array << day[2]}
    low_temp_array.min
  end

  def highest_temperature
    high_temp_array = []
    @data.each {|day| high_temp_array << day[1]}
    high_temp_array.max
  end

  def day_of_lowest_temperature
    new_data_array = @data.sort_by{ |day| day[2]}
    new_data_array[0][0]
  end

  def day_of_highest_temperature
    new_data_array = @data.sort_by{ |day| day[1]}
    new_data_array[-1][0]
  end

  def average_temperatures
    average_temp_array = []
    @data.each { |date| average_temp_array << (date[1] + date[2]) * 0.5}
    average_temp_array
  end

end
