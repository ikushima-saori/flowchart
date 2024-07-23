input_lines = readlines

room = input_lines[0].to_i
air_conditioner = input_lines[1].to_i
air_flow = input_lines[2].to_i

temperature_diff = (room - air_conditioner).abs

require_time = 0

if temperature_diff < 5
    require_time = 15
elsif temperature_diff >= 5 && temperature_diff < 10 then
    require_time = 30
elsif temperature_diff >= 10  then
    require_time = 60
end

case air_flow
when 1 then
  require_time
when 2 then
  require_time = require_time - 5
when 3 then
  require_time = require_time - 10
else
  p "風量の値は1~3にしてください"
  exit
end

p require_time