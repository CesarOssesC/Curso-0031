require "uri"
require "net/http"
require "json"

def request(url_requested)
  url = URI(url_requested)
  https = Net::HTTP.new(url.host, url.port)
  request = Net::HTTP::Get.new(url)
  https.use_ssl = true
  response = https.request(request)
  results = JSON.parse(response.read_body)
  return results
end

def buid_web_page(petition)
  n = petition.size
  array = []
  petition["photos"].each do |img_src|
    puts img_src
    array << img_src["img_src"]
  end
  # puts petition["photos"]

  File.open("index.html", "w") do |f|
    f.puts "<html>"
    f.puts "<head>"
    f.puts "</head>"
    f.puts "<body>"
    f.puts "<ul>"
    array.each do |url|
      f.puts "<li><img src='#{url}'></li>"
    end
    f.puts "</ul>"
    f.puts "</body>"
    f.puts "</html>"
  end
end

petition = request("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=wqYCeEaZmjsU7ZBDNmbbIMYbZnd4Rpge7n09zakX")
#puts petition
buid_web_page(petition)
puts "N° de fotos cargadas!"
