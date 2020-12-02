module SendoAPI
  class Base < ::ActiveResource::Base
    self.include_root_in_json = false
    self.include_format_in_path = false
    # self.site = SendoAPI.config.api_host
    # self.proxy = "http://user:#{SendoAPI.config.proxy_password}@sendo-proxy.postco.co:443"
    # self.headers['Authorization'] = "Basic #{SendoAPI.config.api_token}"

    def initialize(attributes = {}, persisted = false)
      # check if config host and api token is set
      unless SendoAPI.config.proxy_password
        raise ArgumentError, "SendoAPI proxy password is missing, please set it in the config."
      end

      unless SendoAPI.config.api_host
        raise ArgumentError, "SendoAPI api_host is missing, please set it in the config."
      end

      unless SendoAPI.config.api_token
        raise ArgumentError, "SendoAPI api_token is missing, please set it in the config."
      end

      super
    end
  end
end
