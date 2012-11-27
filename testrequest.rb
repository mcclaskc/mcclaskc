require 'net/http'

url = URI.parse('http://mcclaskc.aws.af.cm/')
req = Net::HTTP::Get.new(url.path)
res = Net::HTTP.start(url.host, url.port) {|http|
  http.request(req)
}

list = res.body

p list.class