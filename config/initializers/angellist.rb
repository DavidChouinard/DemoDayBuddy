require 'net/http'

# TODO: Not sure that this is the best way to this
$angel_api = Net::HTTP.new("api.angel.co", 443)
$angel_api.use_ssl = true
