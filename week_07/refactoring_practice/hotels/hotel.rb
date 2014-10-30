class Hotel
  attr_reader :name, :location, :phone

  def initialize(info)
    @name = info["Hotel"]
    @location = info["City"]
    @phone = info["Phone Number"]
    @singles = info["Number of Singles"].to_i
    @doubles = info["Number of Doubles"].to_i
  end

  def total_rooms
    @singles + @doubles
  end
end
