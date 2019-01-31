def get_first_name_of_season_winner(data, season)
  # code here
  data.each do |key, value|
    if key == season
      value.each do |key|
        if key["status"] == "Winner"
          return key["name"].split(" ")[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |key, value|
    value.each do |key|
      if key["occupation"] == occupation
        return key["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |key, value|
    value.each do |key|
      if key["hometown"] == hometown
        count += 1
      end
    end
  end
  return count
end

def get_occupation(data, hometown)
  # code here
  data.each do |key, value|
    value.each do |key|
      if key["hometown"] == hometown
        return key["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age_arr = []
  data.each do |season_key, value|
    if season_key == season
      value.each do |key|
        age_arr << key["age"].to_f
      end
    end
  end
  return (age_arr.inject(0) {|sum, i| sum + i} / age_arr.length).round
end
