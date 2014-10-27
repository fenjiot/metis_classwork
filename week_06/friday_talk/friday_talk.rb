require 'rack'

class HelloWorld
  def call(env)
    sleep 3
    [200, {"Content-Type" => "text/plain"}, ["hello world"] ]
  end

end

class Logger
  def initialize(app)
    @app = app
  end

  def call(env)
    # take a timestamp
    ts1 = Time.now

    # call out next application
    status, headers, body = @app.call(env)

    # take another timestamp
    ts2 = Time.now

    # insert the difference intto the body
    body << "HelloWorld took #{ts2 - ts1} seconds to run"

    # return status, headers, body
    [status, headers, body]

  end
end

Rack::Handler::WEBrick.run Logger.new(HelloWorld.new)
