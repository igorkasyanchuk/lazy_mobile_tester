module LazyMobileTester
  class Engine < ::Rails::Engine
    isolate_namespace LazyMobileTester

    initializer "lazy_mobile_tester.middleware" do |app|
      next unless LazyMobileTester.enabled
      app.middleware.insert_before  ActionDispatch::HostAuthorization, LazyMobileTester::Middleware
    end

    initializer 'lazy_mobile_tester.helpers' do
      ActiveSupport.on_load :action_view do
        include LazyMobileTester::Helper
      end
    end
  end
end
