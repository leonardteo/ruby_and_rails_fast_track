# Hello Ruby Program
def say_hello(name = nil)
  if name 
    puts "Hello #{name}!"
  else
    puts "Hello Ruby!"
  end
end

say_hello "Leo"