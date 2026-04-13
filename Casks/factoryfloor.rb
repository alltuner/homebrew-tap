cask "factoryfloor" do
  version "0.1.73"
  sha256 "16f2e3293dc103e6d24ad98144c52aebb22eb7881f3028c814aa917fe8b65a56"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.73/FactoryFloor.dmg"
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
