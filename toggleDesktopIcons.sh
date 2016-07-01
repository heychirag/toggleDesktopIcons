 #!/bin/bash

state=$(defaults read com.apple.finder CreateDesktop)

if [ $state = "false" ]; then
	$(defaults write com.apple.finder CreateDesktop true)
else
	$(defaults write com.apple.finder CreateDesktop false)
fi	

killall Finder
