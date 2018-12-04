module VitepayApi
    class Configuration
      attr_accessor :api_host, :api_version
      attr_accessor :application_key, :application_secret, :consumer_key
      attr_accessor :faraday
    
      def initialize
        self.api_host             =   "https://vitepay.com"
        self.api_version          =   1.0
        
        self.application_key      =   nil
        self.application_secret   =   nil
        self.consumer_key         =   nil
        
       
      end
      
     
    
    end
  end