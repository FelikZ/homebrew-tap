cask "steelseries-exactmouse-tool" do
  version "1.0"
  sha256 :no_check

  url "https://github.com/LukasKnuth/homebrew-tap.git/bin/steelseries-exactmouse-tool.dmg",
      verified: "github.com/LukasKnuth/homebrew-tap.git/",
      branch:   "main"
  name "SteelSeries ExactMouse Tool"
  desc "Truly removes mouse acceleration in Apple system"
  homepage "https://steelseries.com/downloads"

  app "SteelSeries ExactMouse Tool.app"

  uninstall quit: "com.SteelSeries.SteelSeries-ExactMouse-Tool"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/com.SteelSeries.SteelSeries-ExactMouse-Tool.help",
    "~/Library/Preferences/com.SteelSeries.SteelSeries-ExactMouse-Tool.plist",
  ]
end
