# require 'pry-byebug'

def full_name(first, last)
  # binding.pry
  first_name = first.capitalize
  last_name = last.capitalize
  # binding.pry

  "#{first_name} #{last_name}"
end

puts full_name('shunjiro', 'yatsuzuka')

# 0. gem install pry-byebug 
# 1. require 'pry-byebug'
# 2. binding.pry => breakpoint
# 3. when done, remove the breakpoints
