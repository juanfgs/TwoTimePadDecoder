# coding: utf-8
class OneTimePadEncoder
  def self.encode(message,key)
    xorpair(message,key)
   # (hex_message = message.unpack("H*").pop.hex ^ hex_key = key.unpack("H*").pop.hex ).to_s(16)
  end

  def self.decode(ct,key)
    xorpair(ct,key)
  end
  
  def self.xorpair(a,b)
    a = a.unpack("C*")
    b = b.unpack("C*")    
    result = []
    a.zip(b).each { |x| result.push x[0] ^ x[1] unless x[1] == nil }
    result.pack("C*")
  end  
end

