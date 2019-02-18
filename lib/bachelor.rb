def get_first_name_of_season_winner(data, season)
  # code here
  #look ing the data for season then look into the season 
  
  data[season].each do |v|
    
    v.each do |k,n|
      
  if n  == "Winner"
    return v["name"].split(" ")[0]
  end
end
end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |s, a|
    a.each do |names|
      names.each do |k,v|
        
        if v == occupation
          return  names["name"]
        end
        end
      end
      end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0 
  data.each do |s,a|
    a.each do |hash|
      hash.each do |k,v|
        if v == hometown
          counter += 1 
        end
      end
    end
  end
  counter
  
end

def get_occupation(data, hometown)
  
  data.each do |season, list|
    list.each do |h|
      h.each do |k,v|
        if v == hometown
        return h["occupation"]
       end
     end
  end
end
        
end

def get_average_age_for_season(data, season)
  # code here
  
  agee = 0
  count = 0 
  
  data[season].each do | hash|
    hash.each do |k, v|
      if k == "age"
        count += 1 
        agee += v.to_f
      end
    end
  end
  (agee/count).round
end
