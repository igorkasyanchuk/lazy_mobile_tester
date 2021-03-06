module LazyMobileTester
  class Middleware
    def initialize(app)
      @app = app
    end

    def call(env)
      dup.call!(env)
    end

    def call!(env)
      if (env["REQUEST_URI"].include?("/_lazy") || env["REQUEST_URI"].include?("?_lazy")) && env['HTTP_ACCEPT'].to_s.starts_with?("text/html")
        @url = env["REQUEST_PATH"].to_s.gsub(/\/\?_lazy=?1?/, "").presence || "/"
        @uri = env["REQUEST_URI"].to_s.gsub(/\/\?_lazy=?1?/, "").presence || "/"
        @uri = @uri.gsub(/_lazy/, "")
        @uri = "/#{@uri}" unless @uri.starts_with?("/")

        env["REQUEST_PATH"] = @url
        env["REQUEST_URI"]  = @uri

        [200, [], [ERB.new(template).result(binding)]]
      else
        @status, @headers, @response = @app.call(env)
        [@status, @headers, @response]
      end
    end

    def template
      File.read("#{File.expand_path(File.dirname(__FILE__))}/../../app/views/lazy_mobile_tester/_toolbar.html.erb")
    end

  end
end