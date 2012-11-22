maintainer       "Besol Soluciones S.L."
maintainer_email "pablo@besol.es"
license          "Apache 2.0"
description      "Installs Plesk"
version          "0.1.1"

recipe "plesk", "Installs Plesk"

%w{ ubuntu }.each do |os|
  supports os
end

attribute "plesk/release_id",
  :display_name => "release_id",
  :description => "Plesk release id",
  :default => "PLESK_11_0_9"
