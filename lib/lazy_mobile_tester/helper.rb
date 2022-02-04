module LazyMobileTester
  module Helper
    def lazy_mobile_tester_button
      button = button_to('M', url_for(params.permit!), method: :get, params: { _lazy: 1 }, style: LazyMobileTester.style, id: 'lazy_mobile_tester_button')
      script = "<script> if (window != window.parent) { document.getElementById('lazy_mobile_tester_button').remove(); } </script>".html_safe

      button + script
    end
  end
end