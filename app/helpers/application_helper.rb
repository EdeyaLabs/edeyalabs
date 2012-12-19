module ApplicationHelper
  def mixpanel_js
    js = <<-JS
    <!-- start Mixpanel --><script type="text/javascript">(function(c,a){window.mixpanel=a;var b,d,h,e;b=c.createElement("script");b.type="text/javascript";b.async=!0;b.src=("https:"===c.location.protocol?"https:":"http:")+'//cdn.mxpnl.com/libs/mixpanel-2.1.min.js';d=c.getElementsByTagName("script")[0];d.parentNode.insertBefore(b,d);a._i=[];a.init=function(b,c,f){function d(a,b){var c=b.split(".");2==c.length&&(a=a[c[0]],b=c[1]);a[b]=function(){a.push([b].concat(Array.prototype.slice.call(arguments,0)))}}var g=a;"undefined"!==typeof f?
    g=a[f]=[]:f="mixpanel";g.people=g.people||[];h="disable track track_pageview track_links track_forms register register_once unregister identify name_tag set_config people.identify people.set people.increment".split(" ");for(e=0;e<h.length;e++)d(g,h[e]);a._i.push([b,c,f])};a.__SV=1.1})(document,window.mixpanel||[]);
    mixpanel.init("9d2f7da64bd8cc43a0a28631c438b439");</script><!-- end Mixpanel -->
    JS

    js.html_safe
  end

  def ga_js
    js = <<-JS
    <script type="text/javascript">
      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-37157263-1']);
      _gaq.push(['_setDomainName', 'edeyalabs.com']);
      _gaq.push(['_trackPageview']);

      (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
      })();
    </script>
    JS

    js.html_safe
  end

  def load_cdn_assets
    assets = ""
    Settings.static_assets.each do |asset|
      if asset["public_id"].include? ".js"
        assets += "<script src='#{asset["url"]}' type='text/javascript'></script>"
      end

      if asset["public_id"].include? ".css"
        assets += "<link href='#{asset["url"]}' media='all' rel='stylesheet' type='text/css'>"
      end
    end

    assets.html_safe
  end
end
