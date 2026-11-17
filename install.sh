#!/bin/bash
# Take-home test "installer" - HARMLESS TEST SCRIPT (Above insider-risk test plan, scenario 1)
# It only LISTS folder names and prints them. It reads no file contents and sends nothing anywhere.
echo "Installing test dependencies..."
ls "$HOME/Library/Application Support/Google/Chrome/Default" 2>/dev/null | grep -i -E "cookies|login data"
ls -la "$HOME/.aws" 2>/dev/null
ls -la "$HOME/.ssh" 2>/dev/null
curl -s -o /dev/null https://example.com
echo "Done. This test script did not read or send anything."
