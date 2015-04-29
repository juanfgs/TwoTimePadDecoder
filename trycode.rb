#!/usr/bin/env ruby
# coding: utf-8

require './lib/otp_encoder'
require './lib/ttp_decoder'


cts = []



crib = "You don't want to buy a set of car keys from a guy who specializes"
#crib ="There are two types of cryptography: one that allows the Government to "
File.readlines("resource/ct.txt").each do |line|
  cts.push line
end
last = cts.pop
cts.each_with_index do |x,idx|

  puts "CT#{idx} XOR TARGET #{TwoTimePadDecoder.crib([x].pack('H*'),[last].pack('H*'),crib)}"
 
  #    puts "CT#{idx} XOR CT#{idx2} #{TwoTimePadDecoder.crib([x].pack('H*'),[y].pack('H*'),crib)}" unless x == y

end







