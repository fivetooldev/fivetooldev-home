# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# the compiled file.
#
# WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
# GO AFTER THE REQUIRES BELOW.
#
#= require jquery
#= require jquery_ujs
#= require jquery.mousewheel-3.0.4.pack
#= require jquery.gmap
#= require iso-custom
#= require jquery.isotope.min
#= require anchor
#= require jquery.mousewheel-3.0.4.pack
#= require jquery.gmap
#= require iso-custom
#= require jquery.isotope.min
#= require bootstrap-scrollspy
#= require anchor
#= require bootstrap
#= require_tree .

jQuery(document).ready ->
  jQuery("#map").gMap
    controls: false,
    scrollwheel: false,
    draggable: true,
    markers: [{
      latitude: 38.9205787,
      longitude:  -77.0419928,
      icon:
        image: "assets/pin.png",
        iconsize: [32, 47],
        iconanchor: [32,47],
        infowindowanchor: [12, 0]
    }],
    latitude: 38.9205787,
    longitude: -77.0419928,
    zoom: 14

_gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-34039031-1']);
_gaq.push(['_setDomainName', 'fivetool.io']);
_gaq.push(['_trackPageview']);

->
  ga = document.createElement('script')
  ga.type = 'text/javascript'
  ga.async = true
  ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js'
  s = document.getElementsByTagName('script')[0]
  s.parentNode.insertBefore(ga, s)
