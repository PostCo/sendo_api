module SendoAPI
  class Configuration
    attr_accessor :api_host, :proxy_password, :api_token
  end

  def self.config
    @config ||= Configuration.new
  end

  def self.config=(config)
    @config = config
  end

  def self.configure
    yield config
    SendoAPI::Base.site = SendoAPI.config.api_host

    SendoAPI::Base.proxy = "http://user:#{SendoAPI.config.proxy_password}@sendo-proxy.postco.co:443"
    SendoAPI::Base.headers['Authorization'] = "Basic #{SendoAPI.config.api_token}"

  end
end