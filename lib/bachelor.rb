def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant_info|
    if contestant_info["status"].downcase == "winner"
      name_arr = contestant_info["name"].split(" ")
      return name_arr[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |seasons, contestants|
      contestants.each do |contestant_info|
        if contestant_info["occupation"] == occupation
          return contestant_info["name"]
        end
      end
    end
end

def count_contestants_by_hometown(data, hometown)
  count = 0

  data.each do |season, contestants|
    contestants.each do |contestant_info|
      if contestant_info["hometown"] == hometown
        count += 1
      end
    end
  end

  count
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant_info|
      if contestant_info["hometown"] == hometown
        return contestant_info['occupation']
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_total = 0
  num = 0

  data[season].each do |contestant_info|
    age_total += (contestant_info["age"]).to_i
    num += 1
  end

  (age_total / num.to_f).round(0)
end
