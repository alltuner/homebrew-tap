cask "factoryfloor" do
  version "0.1.33"
  sha256 "85affe7adf1db901d7bd85439c49972c90ad5c746f2d3ac4e3f2da059cf2802e"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.33/FactoryFloor-0.1.33.dmg"
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
