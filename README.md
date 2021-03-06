# xml-to-opencore
Just an attempt to make more handy configuration approach for [OpenCore](https://github.com/acidanthera/OpenCorePkg). The main idea is to keep configuration at vell-formed XML and transform it to OpenCore plist format.

:question: Why you may choose XML instead of plist format:

:white_check_mark: structure validation - there is an XSD schema which allows validating XML 
configuration structure and types

:white_check_mark: IDE autocomplete - we have an autocomplete when working with a configuration, do not need to copy-past between sections anymore

:white_check_mark: types validation - every configured property validated against XSD. It reduces the number of human mistakes with extra symbols or incorrect property types and values.

:white_check_mark: defend during updates - for the upcoming OpenCore release we can see which parts of the configuration require updates

:white_check_mark: an easy compare - it's painful to compare two files with mixed configuration sections. With vell-formed XML we can compare files easily

:airplane: How to use:

#### Without extra dependencies

1. download the repo and navigate to config folder in terminal. Folder structure contains OpenCore version ("/configs/{opencore version}") therefore use your build.
1. open index.html from config folder, specify "oc.xslt" and enter XML configuration content as on screen below:
![how to use](assets/html-help.png)
1. Copy content from "OpenCore config" section and put it within yours config.plist. 

#### With Java installation

1. install [JRE](https://www.java.com/download/) 
1. download the repo and open config folder in terminal. Folder structure contains OpenCore version ("/configs/{opencore version}") therefore use your build.
1. change oc.xml with require properties
1. create a config.plist with command below:

```$ java -jar xml2oc.jar oc.xslt oc.xml config.plist```

Enjoy!

