cask "factoryfloor" do
  version "0.1.51"
  sha256 "675c1e56c24239dbbd4cd0e20781ed1490937036e878a74b5c1aa0ed0a63db92"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.51/FactoryFloor.dmg"
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
