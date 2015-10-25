class Cipher

  def encode(string)
    alpha = ('a'..'z').to_a
    # before I remembered each_with_index was a thing
    cipher = string.gsub(/[\s , \W]/,"").split('').map{ |l| alpha[alpha.index(l)+13] == !nil ? l = alpha[alpha.index(l)+13] : l = alpha[alpha.index(l)-13]} * ",".gsub(/[\s , \W]/,"")
  end

end

c = Cipher.new
greeting = "| Nick |".center(204,"==")
puts greeting
puts "What is your secret message"
secret = gets.chomp
puts "the secret is #{secret}"
message1 = c.encode(secret)
puts "the first recipient sees #{message1}"
message2 = c.encode(message1)
puts "He translates it using the cipher to #{message2}"
