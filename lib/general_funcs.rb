class GeneralFuncs
  def valid_json?(json)
      JSON.parse(json)
      return true
    rescue JSON::ParserError => e
      return false
  end
end
