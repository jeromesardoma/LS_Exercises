def lights(number_of_switches)
  switches = (1..number_of_switches).zip(Array.new(number_of_switches,false)).to_h
  counter = 1
  switches_on = nil
  until counter > number_of_switches do
    switches.map do |k, v|
      switches[k] = !v if k % counter == 0
    end
    switches_on = switches.select { |_, v| v }.keys
    switches_off = switches.select { |_, v| !v }.keys
    puts "Round #{counter}: #{switches_on.empty? ? "none" : switches_on.join(", ")} are on;\
 #{switches_off.empty? ? "none" : switches_off.join(", ")} are off."
    counter += 1
  end
  switches_on
end 

p lights 5
p lights 10