##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "KMSoft-Guestbook" do
author "Brendan Coles <bcoles@gmail.com>" # 2010-10-11
version "0.1"
description "Guestbook - homepage: http://www.kmsoft.org/"

# 2 results for "KMSoft Guestbook" inurl:form.asp
examples %w|
www.kmsoft.org/demo/KmsoftGB/form.asp
directmovies.net/form.asp
|

matches [

# Version detection # Powered by text
{ :version=>/<div id="footer">KMSoft Guestbook v ([\d\.]+) Powered by <a href="http:\/\/www.kmsoft.org[\/]*">KMSoft<\/a><\/div>/, :regexp_offset=>0 },

# Version detection # Powered by text
{ :version=>/<title>KMSoft Guestbook v([\d\.]+)[^<]+<\/title>/, :regexp_offset=>0 },

]

end

