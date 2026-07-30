cask "factoryfloor" do
  version "0.1.79"
  sha256 "9b3ffc2c593ebbae687161a8cd38e767007bc6305f4fffa729aacffc11ea9d02"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.79/FactoryFloor.dmg"
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
