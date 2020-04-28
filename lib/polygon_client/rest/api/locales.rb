module PolygonClient
  module Rest
    class Locales < PolygonRestHandler
      class LocalesResponse < PolygonResponse
        attribute :status, Types::String
        attribute :results, Types::Array do
          attribute :locale, Types::String
          attribute :name, Types::String
        end
      end

      def list
        res = client.request.get("/v2/reference/locales")
        LocalesResponse[res.body]
      end
    end
  end
end
