
def benchmark
  start_time = Time.now
  yield;
  end_time = Time.now
  running_time = end_time - start_time
end
 
# Be careful, pasting this into IRB will take a long time to print.
# It's a loooong string. :)
long_string = "apple"*100000000
 
running_time = benchmark { long_string.reverse } 
puts "string.reverse took #{running_time} seconds to run"


running_time = benchmark { (1..100000000).reduce(:+) }
puts "Summing numbers from 1 to 100000000 took #{running_time} seconds"