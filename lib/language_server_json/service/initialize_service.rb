module LanguageServerJson
  module Service
    class InitializeService < BaseService
      def do_initialize
        Interface::InitializeResult.new(
          capabilities: Interface::ServerCapabilities.new(
            text_document_sync: Interface::TextDocumentSyncOptions.new(
              change: Constant::TextDocumentSyncKind::FULL
            ),
            completion_provider: Interface::CompletionOptions.new(
              resolve_provider: true,
              trigger_characters: '"'
            ),
            definition_provider: true
          )
        )
      end
    end
  end
end
