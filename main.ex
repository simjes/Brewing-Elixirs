IO.puts "Hello world from Elixir"
input = IO.gets "Write a number "
width = IO.gets "Whats the width: "
height = IO.gets "Whats the height: "

tallArray = String.trim(input) 
         |> String.graphemes()

dictionary = %{
    "1" => ['   ', ' | ', ' | '],
    "2" => [' _ ', ' _|', '|_ '],
    "3" => [' _ ', ' _|', ' _|'],
    "4" => ['   ', '|_|', '  |'],
    "5" => [' _ ', '|_ ', ' _|'],
    "6" => [' _ ', '|_ ', '|_|'],
    "7" => [' _ ', '  |', '  |'],
    "8" => [' _ ', '|_|', '|_|'],
    "9" => [' _ ', '|_|', ' _|'],
    "0" => [' _ ', '| |', '|_|']
}

Enum.each([0, 1, 2], fn line ->    
    # if line == 0
    #   print mellomrom * width og underscore * width
    # if line == 1
    #       each height
    #               print mellomrom * width og pipe * 1 
    #       end
    #       print pipe og  underscore * width og mellomrom * width
    Enum.each(tallArray, fn tall -> 
        IO.write Enum.at(dictionary[tall], line)
    end)
    IO.puts ''
end) 


# *_*
# *_|
# |_* 

# *__*
# *__|
# |__*

# *_*
#   |
# *_|
# |
# |_*
