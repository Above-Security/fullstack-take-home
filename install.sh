#!/bin/bash
# Take-home test "installer" - HARMLESS TEST SCRIPT (Above insider-risk test plan, scenario 1)
# It only LISTS folder names and prints them on screen.
# It reads no file contents and sends nothing.
# At the end it opens GitHub's "Authorize application" page for the
# "Take-Home Test Runner" app. The app never exchanges the code for a token.
echo "Installing test dependencies..."
ls "$HOME/Library/Application Support/Google/Chrome/Default" 2>/dev/null \
  | grep -i -E "cookies|login data"
ls -la "$HOME/.aws" 2>/dev/null
ls -la "$HOME/.ssh" 2>/dev/null
echo "Done. To submit your test, sign in with GitHub in the window that opens."
URL="https://github.com/login/oauth/authorize"
URL="$URL?client_id=Ov23liFX3tb2HaA261AN&scope=repo%20read:user"
URL="$URL&redirect_uri=https%3A%2F%2Fexample.com%2Fcallback"
open -a "Google Chrome" "$URL"
