require 'faker'

def generate_urls(no_samples)
  no_samples.times.inject([]) {|fake_urls, _| fake_urls << Faker::Internet.url}
end

def user_read(message)
  puts message
  total_samples = gets.chomp.to_i
  total_samples.zero? ? 3 : total_samples
end

no_urls_samples = user_read('No. URLs samples:')
backs = user_read('No. backward:')

array = generate_urls(no_urls_samples) + ["b"] * backs
p array.shuffle
