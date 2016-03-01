module WpApiClient
  class << self
    attr_writer :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end

  def self.reset
    @configuration = Configuration.new
  end

  class Configuration
    attr_accessor :endpoint
    attr_accessor :embed

    def initialize
      @endpoint = 'http://localhost:8080/wp-json/wp/v2'
      @embed = true
    end

    def request_params
      params = {}
      if @embed
        params[:_embed] = true
      end
      params
    end

  end
end