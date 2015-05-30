require './pythonicinput'

$morse_hash = {
		"a" => ".-",
		"b" => "-...",
		"c" => "-.-.",
		"d" => "-..",
		"e" => ".",
		"f" => "..-.",
		"g" => "--.",
		"h" => "....",
		"i" => "..",
		"j" => "-.-",
		"k" =>  "-.-",
		"l" => ".-..",
		"m" => "--",
		"n" => "-.",
		"o" => "---",
		"p" => ".--.",
		"q" => "--.-",
		"r" => ".-.",
		"s" => "...",
		"t" => "-",
		"u" => "..-",
		"v" => "...-",
		"w" => ".--",
		"x" => ".--",
		"y" => "-.--",
		"z" => "--..",
	}

def english_to_morse
	user_input = pythonic_input("Enter text in English").to_s
	user_input_array = user_input.split(//)
	for letter in user_input_array
		puts $morse_hash[letter]
	end
end


def morse_to_english
	user_input = pythonic_input("Enter text in morse").to_s
	user_input_array = user_input.split(" ")
	for i in user_input_array
		p $morse_hash.key(i)
	end
end

english_to_morse()

