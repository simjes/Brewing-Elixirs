IO.puts "Hello world from Elixir"
input = IO.gets ~S"Write a number "

noe = String.graphemes(String.trim(input))


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
    Enum.each(noe, fn tall -> 
        IO.write Enum.at(dictionary[tall], line)
    end)
    IO.puts ''
end) 
