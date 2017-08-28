# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  # Your code Here
  @candidates.each do |candidate|
  	if candidate[:id] == id
  	  return candidate
  	end
  end
  return nil
end

def experienced?(candidate)
  # Your code Here
  if candidate[:years_of_experience] >= 2
    true
  else
    false 
  end
end

def github_points(candidate)
  # Your code Here
  if candidate[:github_points] >= 100
    true
  else
    false 
  end
end

def languages(candidate)
  # Your code Here
  if (candidate[:languages] & ['Ruby', 'Python']).any?
    true
  else
    false
  end 
end

def date_applied(candidate)
  # Your code Here
  if candidate[:date_applied] >= 15
    true
  else
    false 
  end
end

def age(candidate)
  # Your code Here
  if candidate[:age] >= 18
    true
  else
    false 
  end
end

def qualified_candidates(candidates)
  # Your code Here
  qualified = []
  candidates.each do |candidate|
  	if (experienced?(candidate) == true) && 
  		(github_points(candidate) == true) && 
  		(languages(candidate) == true) && 
  		(date_applied(candidate) == true) && 
  		(age(candidate) == true)
  		qualified << candidate
  	end
  end
  return qualified
end

def order_by_qualifications(candidates)
	ordered = candidates.sort_by { |candidate| [candidate[:years_of_experience], candidate[:github_points]] }
	ordered.reverse
end