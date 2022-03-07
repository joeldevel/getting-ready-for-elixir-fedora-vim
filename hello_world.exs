# How to run it:
#   $ elixir hello_world.exs


# greet is a variable and has a anonymous function bound to it
# we invoke the function using dot operator and pass a value inside 
# the parentheses.
#
# The '->' indicates the body of the function and 'end' indicates end 
# of function body.
# The returned value is the string "Hello "... concatenated with the
# argument passed.
# '<>' operator concatenates strings
# ' #{..}' interpolates strings
# 'IO.gets("message") gets input from console
# 'IO.puts(....)' prints to the console 

name = IO.gets("Tell me your name darling ")
# remove new line character
name = String.trim(name)

greet = fn(name) -> "Hello " <> name <> "!" end
bye = fn(name) -> "Goodbye #{name}, nice to see you!" end

content = "It seems you are learning Elixir..."

IO.puts( greet.(name))
IO.puts( content )
IO.puts( bye.(name))
