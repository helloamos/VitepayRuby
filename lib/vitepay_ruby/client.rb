module VitepayApi
    class Client
      attr_accessor :configuration, :endpoint
      
      def initialize(configuration: VitepayApi.configuration)
        self.configuration      =   configuration
        self.endpoint           =   "#{self.configuration.api_host}/#{self.configuration.api_version}"
      end
      
   
      # Get.
      def get(path, payload: {}, headers: {})
        request( path,  payload: payload, headers: headers)
      end
  
      # Post.
      def post(path, payload: {}, headers: {})
        request( path,  payload: payload, headers: headers)
      end
      
      # Request.
      def request(path, payload: {}, headers: {} )

        #POST /api/v2/charges/batch?key={secretKey}&description={description}

        full_path = "#{path}?key=#{secretKey}&description=#{description}"

        uri = URI.parse(full_path)
        http_client = Net::HTTP.new(uri.host, uri.port)

        
        http_client.use_ssl = true

        
        http_client.verify_mode = OpenSSL::SSL::VERIFY_NONE
        
        request = Net::HTTP::Post.new(uri.request_uri)
        request["Content-Type"] = "application/json"

        request.set_form_data(payload)
        response = http_client.request(request)

        puts response.body
       

      end
      
      
        
    end
  end