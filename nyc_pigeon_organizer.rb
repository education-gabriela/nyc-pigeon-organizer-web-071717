def nyc_pigeon_organizer(data)
  # Gets all names
  values = pigeons.values_at(*pigeons.keys).inject(:merge).values.flatten.uniq
  # Also works with
  # values = data.first.last.values.flatten.uniq

  pigeons = {}

  # Transform names to keys and creates pigeons hash
  values.each do |name|
    pigeons.store(name, {})

    # Loop through all the data
    data.each do |main_attr, information|
      info = []
      # Names inside each value
      information.each do |attr, items|
        if items.include?(name)
          # Add it to the named pigeon
          pigeons[name][main_attr] = info << attr.to_s
        end
      end
    end
  end
  pigeons
end
