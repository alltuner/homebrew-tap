cask "factoryfloor" do
  version "0.1.22"
  sha256 "29fdd32bcff23305672dee716db0878a01caf7c23ea2b888c476d4a4cafa0305"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.22/FactoryFloor-0.1.22.dmg"
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
