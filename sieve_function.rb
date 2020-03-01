
=begin
given a number 'n',
iterate over each integer between n and sqrt(n) (explained below)
  if n is divisible by any number besides 1 and itself, return false
Otherwise, after exitting the for-loop, return true (the number is prime)
=end

def is_prime(n)
  # setting the upperbound to the square root of 'n' cuts time complexity
  for i in 2..Math.sqrt(n)
    # our test for primeness
    if(n % i) === 0
      return false
    end
  end
  return true
end

=begin
given a number 'n', use
the sieve of eratosthenes
to list all the primes
between 2 and n (inclusive)
=end

def sieve(n)
  # initialize an empty array (this will store all primes between 2 and n)
  prime_array = []
  for i in 2..n
    if(is_prime(i))
      # if 'i' is a prime number, add it to the array
      prime_array.push(i)
    end
  end
  # finally, we'll return our array of prime numbers
  return prime_array
end

puts(sieve(23))
