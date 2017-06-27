pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(data)
  # Gets all names
  values = data.values.collect(&:values).flatten.uniq
  pigeons = {}

  # Transform names to keys and creates pigeons hash
  values.each do |name|
    pigeons[name] = {}

    # Loop through all the data
    data.each do |main_attr, information|
      info = []
      # Names inside each value
      information.each do |attr, items|
        if items.include?(name)
          # Add it to the named pigeon
          info = info << attr.to_s
        end
      end
      pigeons[name][main_attr] = info
    end
  end
  pigeons
end
