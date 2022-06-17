require "json"
require "net/http"


def request(address, api_key)
  url = URI(address + api_key)

  http = Net::HTTP.new(url.host, url.port)
  http.use_ssl = true

  request = Net::HTTP::Get.new(url)

  response = http.request(request)
  JSON.parse response.read_body
end

#Crear un método llamado buid_web_page que reciba el hash de respuesta con todos los datos y construya una página web
#metodo build_web_page
def build_web_page(hash)
  photos = hash["photos"]

  html = "<html>\n
    <head>\n
    <title>Api Nasa</title>\n
    </head>\n
    <body>\n
    <h2> Fotos de los Rover en el espacio</h2>\n
    <ul>\n"

  photos.map { |img| html += "\t<li><img src=#{img["img_src"]} width='300px'></li>\n" }
  html += "</ul>\n</body>\n</html>"
  File.write("nasa_api.html", html)
end

#Pregunta bonus: Crear un método photos_count que reciba el hash de respuesta y
#devuelva un nuevo hash con el nombre de la cámara y la cantidad de fotos.
#método photos_count
def photos_count(data)
  photos_array = data["photos"]
  final_array = []
  photos_array.each do |i|
    final_array.push i["camera"]["name"]
  end
  final_hash = final_array.group_by { |x| x }
  final_hash.each do |k, v|
    final_hash[k] = v.count
  end

  final_hash
end

#Api generada desde https://api.nasa.gov/ para Mi XD
data = request("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=", "J7GjoxIDpPlgiQvPDMmxFftg4SF7xBJM3VaRdg2Z&page=1")

#llamado a los métodos
build_web_page(data)
print photos_count(data)
