#!/bin/bash
token=${1:-$GL_PAT} # GitLab token needs these scopes: api read_api

function upload() {
  curl --header "PRIVATE-TOKEN: $token" --upload-file downloads/$(basename $1) https://gitlab.com/api/v4/projects/38585670/packages/generic/$1
}

# upload mojave/10.14/Mojave_Desert.ddw
# upload mojave/10.14/Solar_Gradients.ddw

# upload catalina/10.15/Catalina.ddw

# upload big-sur/11.0/Big_Sur.ddw
# upload big-sur/11.0/Big_Sur_Abstract_2.ddw
# upload big-sur/11.0/Dome.ddw
# upload big-sur/11.0/Iridescence.ddw
# upload big-sur/11.0/Peak.ddw
# upload big-sur/11.0/The_Beach.ddw
# upload big-sur/11.0/The_Cliffs.ddw
# upload big-sur/11.0/The_Desert.ddw
# upload big-sur/11.0/The_Lake.ddw
# upload big-sur/11.0/Tree.ddw

# upload monterey/12.0/Monterey_Abstract.ddw

# upload ventura/13.0/Ventura_Abstract.ddw

# upload sonoma/14.0/Sonoma_Abstract.ddw

# upload sequoia/15.0/Sequoia_Abstract.ddw

upload tahoe/26.0/Tahoe_Abstract.ddw
