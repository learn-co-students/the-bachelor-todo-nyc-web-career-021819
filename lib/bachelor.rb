def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do|person|
    if person["status"] == "Winner"
        return person["name"].split(" ")[0]
      end
    end
  end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, array|
    array.each do|hash|
      if hash["occupation"] == occupation
        return hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season, array|
    array.each do|hash|
      if hash["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, array|
    array.each do|hash|
      if hash["hometown"] == hometown
        return hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  count = 0
  data[season].each do |person|
    count += person["age"].to_f
  end
  new_count = (count / data[season].length).round()
  new_count
end
