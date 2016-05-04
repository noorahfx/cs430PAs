#Fahim NoorAhmad
#CS 430 Programming Languages
#02/12/2016
#module 6 PA

# Factors(n) must return an Array of all the factors of n
def factors(n)

	#create an Array
	array = []
	
	(1..n).each do |num|
		if (n % num) == 0
			array.push(num)
		end
	end
	return array
end
# puts factors(45)

#Primes(n) must return an array of all prime numbers less than or equal to n
def prime (n)

	#create an Array
	prime_num = []

	for num in (2..n)
		is_prime = factors(num)
		if (is_prime.length ==2)
			prime_num.push(num)
		end
	end
	return prime_num
end
# p prime(100)


#countChars(str) must return a Hash whose keys are characters
def countChars(str)
	hash = {}
	hash.default = 0
	letters = str.chars
	letters.each do |letter|
		hash[letter] += 1
	end 
	return hash
end
#puts countChars("Hello World")

#toCountsArray(counts) Hash counting characters, Must restun an Array
#of of  two elements arrays

def toCountsArray(counts)
	 num = counts.sort
	 return num.to_a
end
#puts toCountsArray(countChars("Hello World")).inspect

#encode(str,encoding) - must return a string in which each character of 
#of str is replaced with a string indicated in the Hash encoding

def encode(str,encoding)

	str.each_char do |num|
		if (encoding.has_key? (num))
			" ".push(encoding[num])
		end
	end
	return empty_string
end
