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
