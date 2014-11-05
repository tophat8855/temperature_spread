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
    low_temp_array = []
    ordered_low_temps = []
    answer = 0
    @data.each do |date|
      low_temp_array << date[2]
      ordered_low_temps = low_temp_array.sort
    end

    @data.each do |date|
      if date[2] == ordered_low_temps[0]
        answer += date[0]
      end
    end
    answer
  end

  def day_of_highest_temperature
    high_temp_array = []
    ordered_high_temps = []
    answer = 0
    @data.each do |date|
      high_temp_array << date[1]
      ordered_high_temps = high_temp_array.sort
    end

    @data.each do |date|
      if date[1] == ordered_high_temps[-1]
        answer += date[0]
      end
    end
    answer
  end

  def average_temperatures
    average_temp_array = []
    @data.each do |date|
      average_temp_array << (date[1] + date[2]) * 0.5
    end
    average_temp_array
  end

end
