require 'socket'
s = TCPServer.new(12345)
loop{
  cl = s.accept
  cl.print Time.now.strftime("%c")
  cl.close
}
