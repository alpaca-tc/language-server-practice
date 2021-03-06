require 'language_server-protocol'

module LanguageServerJson
  module Service
    class BaseService
      Interface = LanguageServer::Protocol::Interface
      Constant = LanguageServer::Protocol::Constant

      attr_reader :params

      def initialize(params)
        @params = params
      end
    end
  end
end
