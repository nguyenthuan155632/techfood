require 'elasticsearch'
require 'faraday_middleware'
require 'faraday_middleware/aws_sigv4'

if Rails.env.development?
  Elasticsearch::Model.client = Elasticsearch::Client.new(host: Settings.elasticsearch.url, port: Settings.elasticsearch.port)
else
  Elasticsearch::Model.client = Elasticsearch::Client.new(host: Settings.elasticsearch.url, port: Settings.elasticsearch.port) do |f|
    f.request :aws_sigv4,
              service: 'es',
              region: 'ap-northeast-1',
              credentials_provider: Aws::InstanceProfileCredentials.new
  end
end
