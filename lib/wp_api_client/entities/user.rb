module WpApiClient
  module Entities
    class User < Base
      alias :user :resource

      def self.represents?(json)
        json.dig('_links', 'collection') and json['_links']['collection'].first['href'] =~ /wp\/v2\/users/
      end

      def id
        user['id']
      end

      def name
        user['name']
      end

      def description
        post['description']
      end
    end
  end
end

