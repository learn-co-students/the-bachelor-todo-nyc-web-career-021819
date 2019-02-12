def get_first_name_of_season_winner(data, season)
  data[season].each do |entry|
      if entry["status"]=="Winner"
        return entry["name"].split(" ").first
end
end
end



def get_contestant_name(data, occupation)
  data.each do |key, val|
    val.each do |info|
  if info["occupation"] == occupation
    return info["name"]
end
end
end
end


def count_contestants_by_hometown(data, hometown)
  n = 0
 data.each do |key, val|
    val.each do |info|
      if info["hometown"] == hometown
        n +=1
      end
    end
  end
  n
end

def get_occupation(data, hometown)
data.each do |key, val|
    val.each do |info|
      if info["hometown"] == hometown
        return info["occupation"]
      end
    end
  end
end


def get_average_age_for_season(data, season)
  age=[]
  data.each do |key, val|
    val.each do |info|
      if key == season
      age << info["age"].to_i
    end
  end
end
return (age.inject(0){|sum,x| sum + x } / age.count.to_f).round
end