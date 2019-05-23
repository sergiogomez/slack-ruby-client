module Slack
  module RealTime
    module Api
      module PresenceSub
        #
        # Sends presence_sub for a list of users
        #
        # @option options [Array] :ids
        #   List of users to subscribe to presence events
        def presence_sub(options = {})
          throw ArgumentError.new('Required arguments :ids missing') if options[:ids].nil?
          send_json({ type: 'presence_sub' }.merge(options))
        end
      end
    end
  end
end
