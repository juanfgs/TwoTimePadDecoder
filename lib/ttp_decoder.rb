# coding: utf-8
class TwoTimePadDecoder 
  def self.crib(ct1,ct2,crib)
    m1_xor_m2 = xorpair(ct1,ct2)
    results =""
    xor_array = m1_xor_m2.unpack("C*")
    xor_array.each_with_index { |item,idx|
      results +=  xorpair(xor_array[idx..idx+crib.length].pack("C*"), crib) + " | " # unless  xor_array[idx..idx+crib.length].pack("C*") == ""
    }
    results
  end
  
  def self.xorpair(a,b)
    a = a.unpack("C*")
    b = b.unpack("C*")
    result = []
    a.zip(b).each { |x| result.push x[0] ^ x[1] unless x[1] == nil }
    result.pack("C*")
  end  
end
