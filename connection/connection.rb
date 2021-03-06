require 'mongo'

class Connection

  def initialize

    # set logger level to FATAL (only show serious errors)
    Mongo::Logger.logger.level = ::Logger::FATAL

    # set up a connection to the mongod instance which is running locally,
    # on the default port 27017
    @client = Mongo::Client.new(
  'mongodb://127.0.0.1:27017,127.0.0.1:27027,127.0.0.1:27037/test?replicaSet=Rep'
 )

  end

  def client
    @client
  end

  # get connections to our two collections
  def thor
    @client[:thor]
  end


end