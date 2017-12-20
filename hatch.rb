puts "Please enter in a time (HH:MM)"
time = gets.chomp
new_time = time.split(':')

time_hash = {}
time_hash[:hour] = new_time[0]
time_hash[:min] = new_time[1]

hour = time_hash[:hour].to_i
min = time_hash[:min].to_i

nums = [ "zero", "one", "two", "three", "four",
  "five", "six", "seven", "eight", "nine",
  "ten", "eleven", "twelve", "thirteen",
  "fourteen", "fifteen", "sixteen", "seventeen",
  "eighteen", "nineteen", "twenty", "twenty one",
  "twenty two", "twenty three", "twenty four",
  "twenty five", "twenty six", "twenty seven",
  "twenty eight", "twenty nine"]

if min == 00
  puts "#{nums[hour]} 'o clock"
  elsif min == 1
    puts "one minute past #{nums[hour]}"
  elsif min == 15
    puts "quarter past #{nums[hour]}"
  elsif min == 30
    puts "half past #{nums[hour]}"
  elsif min == 45
    puts "quarter to #{nums[hour + 1]}"
  elsif min > 30
    puts "#{nums[60 - min]} minutes to #{nums[hour + 1]}"
  elsif min < 30
    puts "#{nums[min]} minutes past #{nums[hour]}"
end
