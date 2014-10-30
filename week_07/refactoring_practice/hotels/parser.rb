class Parser
  def initialize(info)
    @info = info
  end

  def as_integer(attribute)
    @info[attribute].gsub(",", "").to_i
  end

  def as_pretty_string(attribute)
    @info[attribute].strip
  end

  def as_pretty_phone_number(attribute)
    messy_phone_number = @info[attribute]
    pattern = /(\d{2})?\(?(\d{3})\)?[-.]?(\d{3})[-.]?(\d{4})/
    match = pattern.match(messy_phone_number)
    "+#{match[1] || 1} (#{match[2]}) #{match[3]}-#{match[4]}"
  end
end
