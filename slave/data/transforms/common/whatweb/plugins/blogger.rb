##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##

Plugin.define "Blogger" do
author "Andrew Horton"
version "0.1"
description "Blogger.com free blogging site"

examples=%w|
http://examples-blogger.blogspot.com/
http://xprograf.blogspot.com/
http://anukrati.blogspot.com/
http://virtualsink.com/
|

# identifying strings
# <meta content='blogger' name='generator'/>

#<a href="http://www.blogger.com"><img width=88 height=31 src="http://www.blogger.com/buttons/bloggerbutton1.gif" border=0 alt="Powered by Blogger"></a>

matches [
{:name=>"Meta generator tag", 
:probability=>100,
:text=>"<meta content='blogger' name='generator'/>"},

{:name=>"Powered by link",
:probability=>100,
:regexp=>/<a href="http:\/\/www.blogger.com"><img [^>]* alt="Powered by Blogger"><\/a>/},
]


end



