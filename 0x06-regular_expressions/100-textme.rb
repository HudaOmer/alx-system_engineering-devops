#!/usr/bin/env ruby
puts ARGV[0].scan(/(-?\d{10,10})|(-?\d\:){4}-?\d/).join(,)
