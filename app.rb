require 'sinatra'
require 'logger'

def log_request
  log = Logger.new(STDOUT)
  log.info("request_method: #{request.request_method}") # "GET"
  log.info("url: #{request.url}")                       # "http://example.com/example/foo"
  log.info("params: #{request.params}")                 # parameter hash
  log.info("body: #{request.body.read}")                # request body sent by the client (see below)
  log.info("query_string: #{request.query_string}")     # ""
  log.info("user_agent: #{request.user_agent}")         # user agent (used by :agent condition)
  log.info("xhr?: #{request.xhr?}")                     # is this an ajax request?
  log.info("path: #{request.path}")                     # "/example/foo"
  log.info("ip: #{request.ip}")                         # client IP address
end

get // do
  log_request
end

post // do
  log_request
end

put // do
  log_request
end

patch // do
  log_request
end

delete // do
  log_request
end

