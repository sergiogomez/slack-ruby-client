module Slack
  module RealTime
    module Api
      module PresenceQuery
        #
        # Sends presence_query for a list of users
        #
        # @option options [Array] :ids
        #   List of users to query the current presence status
        def presence_query(options = {})
          throw ArgumentError.new('Required arguments :ids missing') if options[:ids].nil?
          send_json({ type: 'presence_query' }.merge(options))
        end
      end
    end
  end
end
