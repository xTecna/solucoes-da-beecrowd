k = gets.to_i

if k == 1
  puts 'Top 1'
elsif k <= 3
  puts 'Top 3'
elsif k <= 5
  puts 'Top 5'
elsif k <= 10
  puts 'Top 10'
elsif k <= 25
  puts 'Top 25'
elsif k <= 50
  puts 'Top 50'
else
  puts 'Top 100'
end
