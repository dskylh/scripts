#!/bin/sh

# First we append the saved layout of workspace N to workspace M
i3-msg "workspace --no-auto-back-and-forth 1:  Terminal; append_layout ~/.config/i3/workspace_1.json"

# And finally we fill the containers with the programs they had
(chromium &)
(chromium &)
(kitty &)
