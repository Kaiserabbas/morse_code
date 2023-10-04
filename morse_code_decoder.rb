CODE = {
  ".-" => "A", "-..." => "B", "-.-." => "C", "-.." => "D",
  "." => "E", "..-." => "F", "--." => "G", "...." => "H",
  ".." => "I", ".---" => "J", "-.-" => "K", ".-.." => "L",
  "--" => "M", "-." => "N", "---" => "O", ".--." => "P",
  "--.-" => "Q", ".-." => "R", "..." => "S", "-" => "T",
  "..-" => "U", "...-" => "V", ".--" => "W", "-..-" => "X",
  "-.--" => "Y", "--.." => "Z",
  "-----" => "0", ".----" => "1", "..---" => "2", "...--" => "3",
  "....-" => "4", "....." => "5", "-...." => "6", "--..." => "7",
  "---.." => "8", "----." => "9"
}

def decode_char(morse)
  CODE[morse]
end

def decode_word(morse_word)
  word_chars = morse_word.split(" ")
  decoded_word = ""

  for char in word_chars
    decoded_word += decode_char(char)
  end

  decoded_word
end

def decode_message(message)
  message_words = message.split("   ")
  decoded_message = ""

  for word in message_words
    decoded_message += decode_word(word) + " "
  end

  decoded_message.strip
end


morse_message_example = "-- -.--   -. .- -- .   .. ...   - .- .--- . -- --- ..- - .."
decoded_message = decode_message(morse_message_example)
puts decoded_message

message_from_bottle = ".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ..."
decoded_message_from_bottle = decode_message(message_from_bottle)
puts decoded_message_from_bottle
