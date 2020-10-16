# xml-to-opencore
Just an attempt to make more handy configuration approach for OpenCore. The main idea is to keep configuration at vell-formed XML and transform it to OpenCore plist format.

:question: Why you may choose XML instead of plist format:

:white_check_mark: structure validation - there is an XSD schema which allows validating XML 
configuration structure and types
:white_check_mark: IDE autocomplete - we have an autocomplete when working with a configuration, do not need to copy-past between sections anymore
:white_check_mark: types validation - every configured property validated against XSD. It reduces the number of human mistakes with extra symbols or incorrect property types and values.
:white_check_mark: defend during updates - for the upcoming OpenCore release we can see which parts of the configuration require updates
:white_check_mark: an easy compare - it's painful to compare two files with mixed configuration sections. With vell-formed XML we can compare files easily

:airplane: How to use:

1. Install [JRE](https://www.java.com/download/) 


