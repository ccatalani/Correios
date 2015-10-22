# encoding: UTF-8
# http_helper.rb


#
module HttpHelper

  #
  def self.get(url)
    args = {}
    log_request('GET', url)
    response = HTTParty.get(url, args)
    log_response(response)
    response
  end

  #
  def self.log_request(operation, url)
    puts "\n    REQUEST"
    puts "    #{operation}: #{url}"
  end

  #
  def self.log_response(response)
    puts "\n    RESPONSE"
    puts "    HTTP CODE: #{response.code}"
    puts "    HEADERS:\n"
    puts "      Date: #{response.headers['date']}"
    puts "      Content-Type: #{response.headers['content-type']}"
    puts "    BODY: #{response.body}" unless response.body.nil?
    puts "\n"
  end
end
