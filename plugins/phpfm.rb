##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "PHPFM" do
author "Brendan Coles <bcoles@gmail.com>" # 2010-06-09
version "0.1"
description "A file manager written in PHP. - homepage:http://www.php-fusion.co.uk/"
examples %w|
www.abbahost.net/vinedocs/
gis-develop.3x.ro/temp/index.php
www.surat-local.go.th/content/
www.huadong-sao.go.th/content/
www.willsfamily.org/files/
anamariac.3x.ro/phpfm/
thc.infinitus.co.uk/fileman/
files2.visual-paradigm.com/UserUpload/
www.pollak-gmbh.at/phpfm/
|

matches [

# About 36,400 results @ 2010-06-09
{:name=>'GHDB: "powered by PHPFM" -username',
:certainty=>25,
:ghdb=>'"powered by PHPFM" -username'
}

]

def passive
        m=[]

        if @body =~ /Powered by <a href='http:\/\/phpfm.zalon.dk\/' target='_new' class='bottom'>PHPFM<\/a> [\d\.]+<\/td>/
                version=@body.scan(/Powered by <a href='http:\/\/phpfm.zalon.dk\/' target='_new' class='bottom'>PHPFM<\/a> ([\d\.]+)<\/td>/)[0][0]
                m << {:name=>"powered by text",:version=>version}
        end

        m
end


end

