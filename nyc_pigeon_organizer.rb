def nyc_pigeon_organizer(data)
  # write your code here!
  #hoh
  #
  pigeon_list_restructured = {} #got it
data.each do |color_gender_lives, value| #for each top-level key (color, gender, lives) in the data array, you are assigning it as --color_gender_lives--, and the value(purple/grey/white , male/female, subway/cp/library/cityhall) is being assigned the name, --value--
  value.each do |stats, all_names| #for each key saved to the word VALUE, assign it the name --stats--, and for each value array of names, call that value --all_names--
    all_names.each do |name| #for the array of names in ALL_NAMES, for eacn hame, call it --name--
      if pigeon_list_restructured[name] == nil #check the new hash called pigeon_list_restructured, and if the name does not already exist, then:
        pigeon_list_restructured[name] = {} #create a new hash with that name as the key value.
      end


      if pigeon_list_restructured[name][color_gender_lives] == nil #check the new hash called pigeon_list_restructured, and see if the NAME and corresponding COLOR_GENDER_LIVES attribute already exists in it. If it does not exist, then:
        pigeon_list_restructured[name][color_gender_lives] = [] #create a new array within the hash pigeon_list_restructured, where the
      end
      pigeon_list_restructured[name][color_gender_lives].push(stats.to_s) # push the stats (purple, male, subway, etc) into the array color_gender_lives, but turn stats into a string
    end
  end
end
pigeon_list_restructured #got it
end
