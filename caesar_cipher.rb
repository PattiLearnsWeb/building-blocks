def caesar_cipher(plain_string, strafe)
  encrypt_string = ""
  plain_string.each_char do |c|
    for i in 0..strafe
      if c != " "
        if i == "Z"
          c = "A"
        elsif i == "z"
          c = "a"
        else
          c.next!
        end
      end
    end

    encrypt_string += c
  end

  puts encrypt_string
end

caesar_cipher "Wow cool this caesar cipher", 20
