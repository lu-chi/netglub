##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "Jboss" do
	author "Louis Nyffenegger"
	version "0.1"

	matches [
		# 
		# Default title from Jboss homepage
		{	:name=>"Jboss default title",
			:probability=>100,
			:regexp=>/<title>Welcome to JBoss AS<\/title>/},
		
		# Jboss Homepage contains a link to administration console
		{	:name =>"link to Administration Console",
			:probability=>50,
			:regexp=>/<a href=\"\/admin-console\/\">Administration Console<\/a>/},


		# Jboss Homepage contains a link to web console
		{	:name =>"link to Web Console",
			:probability=>100,
			:regexp=>/<a href=\"\/web-console\/\">Jboss Web Console<\/a>/},
	
		# Jboss Homepage contains a link to  JMX console
		{	:name =>"link to JMX Console",
			:probability=>100,
			:regexp=>/<a href=\"\/jmx-console\/\">JMX Console<\/a>/}	
	]

end
