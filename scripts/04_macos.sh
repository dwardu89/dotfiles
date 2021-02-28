configure_macos () {
  # Dock

  # Set auto hide delay to 0ms
  defaults write com.apple.Dock autohide-delay -float 0

  # Add a stack with the recent applications
  defaults write com.apple.dock persistent-others -array-add '{ "tile-data" = { "list-type" = 1; }; "tile-type" = "recents-tile"; }' && \
  killall Dock

  # Stop icons from bouncing (I don't like attention seekers)
  defaults write com.apple.dock no-bouncing -bool false

  # Enable scroll gestures on the dock, to open stakcs.
  defaults write com.apple.dock scroll-to-open -bool true

  # Kill Dock to restart it
  killall Dock

  # Finder

  # Show "Quit Finder" Menu Item
  defaults write com.apple.finder QuitMenuItem -bool true

  # Hide the desktop icons
  defaults write com.apple.finder CreateDesktop -bool false

  # Show the current path you're on in Finder
  defaults write com.apple.finder ShowPathbar -bool true

  # Scrollbar visibility
  #Possible values: WhenScrolling, Automatic and Always.
  defaults write -g AppleShowScrollBars -string "Automatic"

  # Show the status bar in finder
  defaults write com.apple.finder ShowStatusBar -bool true

  # Avoids creation of .DS_Store and AppleDouble files. On Network Volumes
  defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

  # Avoids creation of .DS_Store and AppleDouble files. On USB
  defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

  # Kill finder to restart it
  killall Finder

  # Hardware

  # Power Management
  # Set display to sleep after 15 minutes of inactivity
  sudo pmset displaysleep 15

  # Set sleep idle time to 60 minutes
  sudo systemsetup -setcomputersleep 60

  # Keyboard
  # Disable autocorrect on keyboard
  defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false

  # Enable tab in modal dialog for All Controls (replace with for 0 to have it for Text boxes and lists only.)
  defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

  # Modify the key repeat behaviour
  # Key Repeat (false (Default) for enabled, true for disabled)
  defaults write -g ApplePressAndHoldEnabled -bool false

  # Login Window
  # Add text to login screen
  # sudo defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText "If found please contact: ${lockscreen_name}\n e-mail: ${email}\n tel: ${telephone}"  <<< "${sudo_password}" 2> /dev/null
}
