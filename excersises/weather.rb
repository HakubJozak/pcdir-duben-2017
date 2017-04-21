class Weather
  def initialize(data)
    @calendar = data
  end

  def to_html
    vertical_table
  end

  private

  def vertical_table
    @calendar.each_pair.map { |day,weather|
      """
        <tr>
          <th colspan='2'>#{day}</th>
          <td>#{weather}</td>
        </tr>
      """
    }.join
  end

  def horizontal_table
    days = @calendar.keys.map { |day|
      "<th>#{day}</th>"
    }

    weathers = @calendar.values.map { |value|
      " <td>#{value}</td>"
    }

      """
      <tr>#{days.join}</tr>
      <tr>#{weathers.join}</tr>
      """
  end

end


# calendar = Hash[calendar.sort_by { |k,v| k.to_s.size }]


def ahoj
  puts 'ahoj'
end
