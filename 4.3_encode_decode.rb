# Step 1: Create a function called encode() to replace all the lowercase vowels in a given string with numbers according to the following pattern:
# Step 2: Now create a function called decode() to turn the numbers back into vowels according to the same pattern shown above.

def encode(word)
  word.gsub(/[aeiou]/, 'a' => 1, 'e' => 2, 'i' => 3, 'o' => 4,
    'u' => 5)
end

def decode(word)
  word.gsub(/[12345]/, '1' => 'a', '2' => 'e', '3' => 'i', '4' => 'o',
    '5' => 'u')
end

p encode("hello") == "h2ll4"
p decode("h3 th2r2") == "hi there"
