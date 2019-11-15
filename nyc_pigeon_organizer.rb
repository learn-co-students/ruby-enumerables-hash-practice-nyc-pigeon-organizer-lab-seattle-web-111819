def nyc_pigeon_organizer(data)
pigeon_hash = {}

data.each do |categories, subcategories| 
  subcategories.each do |key, name|
    name.each do |pigeon_name|
      pigeon_hash[pigeon_name] ||= {}
      pigeon_hash[pigeon_name][categories] ||= []
      pigeon_hash[pigeon_name][categories] << key.to_s
      end
    end
  end 
pigeon_hash
end
