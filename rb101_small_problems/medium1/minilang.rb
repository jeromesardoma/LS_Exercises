def minilang(input)
  register = 0
  stack = []

  input.split.each do |command|
    case command
    when 'PUSH' then stack << register
    when 'ADD' then register += stack.pop
    when 'SUB' then register -= stack.pop
    when 'MULT' then register *= stack.pop
    when 'DIV' then register /= stack.pop
    when 'MOD' then register %= stack.pop
    when 'POP' then register = stack.pop
    when 'PRINT' then puts register
    else register = command.to_i
    end
  end
end

minilang '4 PUSH 5 MULT PUSH 3 ADD PRINT'
minilang '4 PUSH 5 MULT PUSH 3 ADD PUSH -7 ADD PRINT'
# (3 + (4 * 5) - 7) / (5 % 3)