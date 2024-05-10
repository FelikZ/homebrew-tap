cask "steelseries-exactmouse-tool" do
  sha256 :no_check

  url do
    URI.join('file://', __dir__, 'bin/steelseries-exactmouse-tool-1.0.dmg')
  end
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
