##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "Axigen-Mail-Server" do
author "Brendan Coles <bcoles@gmail.com>" # 2010-09-17
version "0.1"
description "Axigen is an integrated email, calendaring & collaboration platform, masterfully built on our unique Linux mail server technology, for increased speed & security. - homepage: http://www.axigen.com/"

# 67 results for "powered by Axigen Mail Server" @ 2010-09-17
examples %w|
194.105.7.2:8000
mail.realtyweb.net
mail.conpoint.com
box.exent.it
oxy.pub.ro:8000
www.axigenmail.com
www.mbox4me.com
www.el-meu-correu.com
www.elmeucorreu.com
www.mbhmail.nl
mail.mediasat.ro
mail.keytown.com
webmail.uachurchonline.net
mail.atumo.se
webmail.osim.ro
radioquintessenz.de:8080
webmail.iie.es
webmail.loxley.co.th
my126.org
mail.jasoneng.com.hk:81
jiepnet.com:8082
mail.nordtroms.net
samaphone.net
mail.ttaf.com.hk
www.fodor.com.ro
bnmw.nl
webmail.multimedia.cz
mail.oratech.com.tr:2080
webmail.velpitar.ro
mail.fon.edu.mk
webmail.comune.forli.fc.it
mail.mediahertz.it
axigen.cmss-oz.cz
mail.mofidu.ac.ir
webmail.axen.se
mail.bonicom.cz
www.stampq.lv:9001
albaniaonline.net
pop3.interclan.net
pop3.nckcn.com
axitest.pl
interclan.net
correopersonal.es
mi-correo.es
mail.arquinetmty.com
|

matches [

# Login redirect page # Javascript
{ :text=>'            top.opener.location.href="/?login=";' },

# Powered by text
{ :text=>'<div>Powered by <a href="http://www.axigen.com" target="_blank" class="gray">Axigen Mail Server</a></div>' },
{ :text=>'Powered by <a href="http://www.axigen.com/" target="_blank">Axigen Mail Server</a>' },

# "Javascript required" HTML
{ :text=>'<div class="nojsContainer"><h1>In order to access AXIGEN Webmail, <br />you must enable Javascript in your browser!</h1></div>' },

]

# Version detection
# Tested versions: 7.3.1, 7.3.2, 7.3.3, 7.4.0, 7.4.2, 7.5.0, 7.5.0.30.1
def passive
        m=[]

	# Default title
        if @body =~ /<title>AXIGEN Webmail - v([\d\.]+)<\/title>/
                version=@body.scan(/<title>AXIGEN Webmail - v([\d\.]+)<\/title>/)[0][0]
                m << {:version=>version}
        end

	# Powered by text
	if @body =~ /<p>Powered by <a href="http:\/\/www.axigen.com[\/]*" target="_blank">Axigen Mail Server<\/a><\/p>/
		if @body =~ /        <p>Version ([\d\.]+)<\/p>/
			version=@body.scan(/        <p>Version ([\d\.]+)<\/p>/)[0][0]
			m << {:version=>version}	
		end 
        end

	m

end


end

