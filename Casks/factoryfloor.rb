cask "factoryfloor" do
  version "0.1.53"
  sha256 "7083fc87e6e10fb3382261f54902839bd652b0c052843de1769a4e9126d187d2"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.53/FactoryFloor.dmg"
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
