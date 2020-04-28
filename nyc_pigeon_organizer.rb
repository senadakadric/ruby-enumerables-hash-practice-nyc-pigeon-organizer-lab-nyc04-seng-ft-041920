require 'pry'
def nyc_pigeon_organizer(data)
  
  #creating a new hash that we're gonna store the organized data in
  organized_pigeon_data= {}
  
  #first iterating through the outermost hashes of color, gender and lives 
  data.each_pair do |color_gender_lives, inner_hashes|
    
    # iterating through the second/inner hashes
    # key_values = values of color, gender and lives
    
    inner_hashes.each_pair do |key_values, names_array|
      
      #the values of the inner hashes are arrays of the names of each pigeon
      #we want to iterate through each pigeon name so that we can collect it 
      
      names_array.each do |name|
        
      #we want to reorganize the data so that pigeon names are the keys, with each name pointing to a hash of their attributes
      
      #inserting the pigeon name as the key of a new hash IF that key doesnt already exist in the hash 
      
      if organized_pigeon_data[name] == nil
        organized_pigeon_data[name] = {}
      end
  
      # creating an array to hold the values of the attributes color, gender and lives IF that array doesn't exist already (if it's NOT true- just another way of writing =nil)
      if !organized_pigeon_data[name][color_gender_lives]
        organized_pigeon_data[name][color_gender_lives] = []
       end
      
      # adding the values into the array, turning the symbols into strings
      organized_pigeon_data[name][color_gender_lives] << key_values.to_s
        
      end
    end
  end
  
  organized_pigeon_data
end
