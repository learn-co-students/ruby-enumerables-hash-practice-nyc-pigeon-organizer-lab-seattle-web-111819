def nyc_pigeon_organizer(data)
  pigeons={}
  #We start by iterating through the nested hashes using the .each enumerable. This allows us to collect the values and keys from each layer of nested hash (lines 4-6). 
  data.each do |key, val|
    val.each do |newval, names|
      names.each do |name|
  #If the hash doesn't contain the name, we create a new hash using the name as a key.
        if !pigeons[name]
          pigeons[name]={}
        end
  #We then assign the color, gender, and lives keys to arrays for the pigeon.    
        if !pigeons[name][key]
          pigeons[name][key]=[]
        end
  #We then use .to_s to set newval to a string and add it to the hash for the pigeon. There is nothing specific to any data set in this method, so it should work for any hash that is strucured the same way.     
        pigeons[name][key]<<newval.to_s
      end
    end
  end
  pigeons
end
      
