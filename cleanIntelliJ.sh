echo "Deleting IntelliJ from /Applications folder"
rm -rf /Applications/IntelliJ\ IDEA\ *.app

echo "Deleting IntelliJ preferences, caches, plugins and logs"

rm -rf ~/.IntelliJ*
rm -rf ~/.IdeaIC*
rm -rf ~/Library/Preferences/IntelliJ*
rm -rf ~/Library/Preferences/IdeaIC*
rm -rf ~/Library/Caches/IntelliJ*
rm -rf ~/Library/Caches/IdeaIC*
rm -rf ~/Library/Application\ Support/IntelliJ*
rm -rf ~/Library/Application\ Support/IdeaIC*
rm -rf ~/Library/Logs/IntelliJ*
rm -rf ~/Library/Logs/IdeaIC*

echo "Done"

