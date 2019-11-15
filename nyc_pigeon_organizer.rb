def nyc_pigeon_organizer(data)
  # write your code here!
  #hoh
  #
  pigeon_list_restructured = {}
data.each do |color_gender_lives, value|
  value.each do |stats, all_names|
    all_names.each do |name|
      if pigeon_list_restructured[name] == nil
        pigeon_list_restructured[name] = {}
      end
      if pigeon_list_restructured[name][color_gender_lives] == nil
        pigeon_list_restructured[name][color_gender_lives] = []
      end
      pigeon_list_restructured[name][color_gender_lives].push(stats.to_s)
    end
  end
end
pigeon_list_restructured
end
