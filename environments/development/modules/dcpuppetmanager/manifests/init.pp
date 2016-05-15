# Class: puppetmanager
#
# This module manages puppetmanager
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class dcpuppetmanager {
  include dcfirewall
  include dcapachehttp
}
