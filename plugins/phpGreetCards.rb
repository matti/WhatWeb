##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "phpGreetCards" do
author "Brendan Coles <bcoles@gmail.com>" # 2010-08-01
version "0.1"
description "PHP greeting card mailer - homepage: http://www.w2b.ru/webapplications/index.php"

examples %w|
counter25.co.funpic.de/phpGreetCards/phpGreetCards/
www.w2b.ru/demo/phpGreetCards/
www.sumareclass.infopainel.com/phpcard/phpGreetCards.php
|

matches [

# Powered by text
{ :text=>'<td align="right"><font color="#b8c2cc">Powered by <a href="http://www.w2b.ru/webapplications/index.php" target="_blank">phpGreetCards</a>, ' },
{ :text=>'<td align="right"><font color="#b8c2cc">Powered by <a href="http://www.w2bpm.com/index.php?cat=phpGreetCards" target="_blank">phpGreetCards</a>, ' },

]

end

