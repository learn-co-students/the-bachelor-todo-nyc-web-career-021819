def get_first_name_of_season_winner(data, season)
	winner = ""
	data[season].each do |x|
		x.each do |key, value|
			if value.include?("Winner")
				winner = x["name"]
				winner = winner.split[0]
			end
		end
	end
	winner
end

def get_contestant_name(data, occupation)
	contestant_name = ""
	data.values.each do |all_data|
		all_data.each do |sub_data|
			sub_data.each do |k, v|
				if v.include?(occupation)
					contestant_name = sub_data["name"]
				end
			end
		end
	end
	contestant_name
end

def count_contestants_by_hometown(data, hometown)
	total = 0
	data.values.each do |all_data|
		all_data.each do |sub_data|
			sub_data.each do |k, v|
				if v.include?(hometown)
					total += 1
				end
			end
		end
	end
	total
end

def get_occupation(data, hometown)
	occupation = []
	data.values.each do |all_data|
		all_data.each do |sub_data|
			sub_data.each do |k, v|
				if v.include?(hometown)
					occupation << sub_data["occupation"]
				end
			end
		end
	end
	occupation[0]
end

def get_average_age_for_season(data, season)
	age = 0
	ages = []
	average_age = 0
	data[season].each do |all_data|
		all_data.each do |sub_data|
				if sub_data.include?("age")
					age = all_data["age"].to_i
					ages << age
				end
				average_age = ages.inject {|sum, el| sum + el}.to_f/ages.length
		end
	end
	average_age.round
end
