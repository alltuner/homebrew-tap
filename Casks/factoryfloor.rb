cask "factoryfloor" do
  version "0.1.76"
  sha256 "3dfd00e6913d74952b481be750a21f5307e9929c0546639be106df21830edd14"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.76/FactoryFloor.dmg"
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
