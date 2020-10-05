class Application

    def call(env)
        resp = Rack::Response.new

        resp.write Time.now

        if Time.now.hour < 12
            resp.write "\nGood morning!"
        else
            resp.write "\nGood afternoon!"
        end

        resp.finish
    end
end
