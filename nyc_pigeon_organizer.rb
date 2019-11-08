def nyc_pigeon_organizer(data)
  name_hash = {}
  data.each do |trait, trait_types|
    trait_types.each do |type, all_names|
      all_names.each do |name|
        if name_hash[name] == nil
          name_hash[name] = {}
        end
        if name_hash[name][trait] == nil
          name_hash[name][trait] = []
        end
        name_hash[name][trait] << type.to_s
      end
    end
  end
  name_hash
end
