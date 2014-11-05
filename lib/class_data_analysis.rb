class ClassDataAnalysis
  def initialize(data)
    @data = data
  end

  def lowest_temperature
    low_temp_array = []
    @data.each {|day| low_temp_array << day.low}
    low_temp_array.min
  end

  def highest_temperature
    high_temp_array = []
    @data.each { |day| high_temp_array << day.high}
    high_temp_array.max
  end

  def day_of_lowest_temperature
    @data.sort_by!{ |day| day.low}
    @data[0].day
  end

  def day_of_highest_temperature
    @data.sort_by!{ |day| day.high}
    @data[-1].day
  end

  def average_temperatures
    average_temp_array = []
    @data.each {|date| average_temp_array << (date.high + date.low) * 0.5}
    average_temp_array
  end

end
