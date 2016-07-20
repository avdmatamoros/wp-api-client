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

      def first_name
        user['first_name']
      end

      def last_name
        user['last_name']
      end

      def description
        user['description']
      end

      def email
        user['email']
      end

      def url
        user['url']
      end

      def link
        user['link']
      end

      def avatar_urls
        user['avatar_urls']
      end
    end
  end
end

