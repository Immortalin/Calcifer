local completionList = howl.ui.ListWidget

local http = require("socket.http")

function getPackageList ()
  -- server returns list of packages, server does not store any packages, just pointers to the url.
  -- Package url points to a git repo. Package manager uses semantic versioning. Each package's latest version's hash will be recorded down for security reasons

  pkglist = http.request("pkglist.api.immortalin.com")
  return pkglist -- I still have yet to decide what what format to use, i.e. json or probuf etc.
end


return info = {
  author = "All Rights Reserved 2016",
  description = "Package Manager for the Howl Editor.",
  license = "MIT"
}
