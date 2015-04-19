require "faraday"
require "faraday_middleware"

module Ruboty
  module Handlers
    class Ma < Base
      HOST = "jlp.yahooapis.jp"
      PATH = "MAService/V1/parse"

      env :YAHOO_APPID, "Application ID for Yahoo! API"

      on(
        /ma (?<query>.+)/,
        description: "morphological analysis",
        name: "ma"
      )

      def ma(message)
        res = client.get do |req|
          req.params["appid"] = ENV["YAHOO_APPID"]
          req.params["sentence"] = message[:query]
          req.params["results"] = "ma"
        end
        body = res.body["ResultSet"]["ma_result"]["word_list"]["word"] || []
        body = [body] if body.class != Array
        message.reply(body.map { |word| "#{word['surface']}(#{word['pos']})" }.join(" / "))
      rescue => e
        Ruboty.logger.error %(Error: #{e.class}: #{e.message}\n#{e.backtrace.join("\n")})
      end

      private

      def client
        @client ||= Faraday.new(url: url) do |faraday|
          faraday.request :url_encoded
          faraday.response :xml
          faraday.adapter Faraday.default_adapter
        end
      end

      def url
        %(http://#{HOST}/#{PATH})
      end
    end
  end
end
