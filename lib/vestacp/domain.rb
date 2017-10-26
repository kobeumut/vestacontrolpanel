module Vestacp
    # Vestacp::Domain is the class for clients domain
  class Domain < Base

    # Create User Account
    #
    # Parameters:
    #
    # * <tt>:username</tt>
    # * <tt>:password</tt>
    # * <tt>:email</tt>
    # * <tt>:package</tt>
    # * <tt>:first_name</tt>
    # * <tt>:last_name</tt>
    #
    # See:
    #
    # http://vestacp.com/docs/api/#add_user
    def self.add(raw = {})
        args = {
        username: 'arg1',
        domain: 'arg2'
        }
        params = {}
        raw.each {|key, value| params[args[key].to_sym] = value }
        params.merge!(cmd: 'v-add-domain')
        send_request(params, raw)
    end

    # Delete User Domain
    #
    # Parameters:
    #
    # * <tt>:username</tt>
    def self.delete(raw = {})
        args = {
        username: 'arg1',
        domain: 'arg2'
        }
        params = {}
        raw.each {|key, value| params[args[key].to_sym] = value }
        params.merge!(cmd: 'v-delete-domain')
        send_request(params, raw)
    end
  end
end