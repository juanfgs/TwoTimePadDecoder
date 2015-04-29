require 'minitest/spec'
require 'minitest/autorun'

require 'otp_encoder'


describe OneTimePadEncoder do




  it "must generate an encodeable string" do

    OneTimePadEncoder.encode("hello", "secret").must_be_instance_of String
    OneTimePadEncoder.decode("\r\x06\x1E\t\e", "secret").must_equal "hello"
  end


end
