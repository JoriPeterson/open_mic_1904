class OpenMic
  attr_reader :location, :date, :performers, :repeated_jokes

  def initialize(location: location, date: date)
    @location= location
    @date = date
    @performers = []
    @repeated_jokes = false
  end

  def welcome(user)
    @performers << user
  end

  # def repeated_jokes?
  #   if @name.tell
  #     @repeated_jokes == true
  #   end
  # end

end
