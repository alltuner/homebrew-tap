cask "factoryfloor" do
  version "0.1.46"
  sha256 "85153713b5c50e8477047e18db8ca34ab4a30372426d4316fb0ba89b47b8b28e"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.46/FactoryFloor-0.1.46.dmg"
  name "Factory Floor"
  desc "AI-powered development workspace for macOS"
  homepage "https://factory-floor.com"

  depends_on macos: ">= :sonoma"

  app "Factory Floor.app"
  binary "#{appdir}/Factory Floor.app/Contents/Resources/ff", target: "ff"

  zap trash: [
    "~/.config/factoryfloor",
    "~/.factoryfloor",
    "~/Library/Preferences/com.alltuner.factoryfloor.plist",
  ]
end
