cask "factoryfloor" do
  version "0.1.7"
  sha256 "43a2faec1d9e2c308b2bd6966dcec1b3c6a9e2b01632fa8d8c206669727c8945"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.7/FactoryFloor-0.1.7.dmg"
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
