def get_first_name_of_season_winner(data, season)
  data.each do |key, value|               #iterates over the hash "data"
    if key == season                      #determine if the keys within the data hash is equal to                                          season arguement
      value.each do |info|               #iterates over the values in the hash "data"
    if info["status"] == "Winner"        #checks to see if the status is equal to winner
      return info["name"].split[0]       #if status is winner, returns that full name, but split                                    and only returning the value in index 0
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |key, value|
    value.each do |info|
      if info["occupation"] == occupation
        return info["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0                       #create a counter starting at 0 
  data.each do |key, value|
    value.each do |info|
      if info["hometown"] == hometown   #determining if both value and argmement match
        counter += 1                    #adding 1 to the counter everytime if "hometown" matches                                  hometown arguement
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.each do |key, value|
    value.each do |info|
      if info["hometown"] == hometown
        return info["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age = 0                           #creating variable = 0, instead of array so its an integer
    data.each do |key, value|
      if key == season              #iterating down to the age values
        value.each do |info|
          age += info["age"].to_f   #returns "age" as floating integers and adds into age
        end
          age = age / value.length  #value.length gets value as a integer of both girls
        end
      end
      return age.round               #.round to round .5 up
end
