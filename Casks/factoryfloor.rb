cask "factoryfloor" do
  version "0.1.62"
  sha256 "99f68a0cb7c992cf5d99e1c41ff2b094e199cc2664ef876a0279b39933ec0224"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.62/FactoryFloor.dmg"
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
