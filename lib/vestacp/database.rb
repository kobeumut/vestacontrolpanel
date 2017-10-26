module Vestacp
  # Vestacp::Database is the class for clients domain
  class Database < Base
    def self.add(raw = {})
        args = {
            username: 'arg1',
            db_name: 'arg2',
            db_user: 'arg3',
            db_pass: 'arg4'
        }
        params = {}
        raw.each {|key, value| params[args[key].to_sym] = value }
        params.merge!(cmd: 'v-add-database')
        send_request(params, raw)
    end

    # Delete User Databaase
    #
    # Parameters:
    #
    # * <tt>:username</tt>
    # * <tt>:db_name</tt>
    # * <tt>:db_name</tt>
    # * <tt>:db_pass</tt>
    def self.delete(raw = {})
        args = {
            username: 'arg1',
            db_name: 'arg2',
            db_user: 'arg3',
            db_pass: 'arg4'
        }
        params = {}
        raw.each {|key, value| params[args[key].to_sym] = value }
        params.merge!(cmd: 'v-delete-database')
        send_request(params, raw)
    end
  end
end