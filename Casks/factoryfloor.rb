cask "factoryfloor" do
  version "0.1.34"
  sha256 "0380cb5d0501016f39126515c72e69aa58e7f17cd392fd211d0303400de0a38a"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.34/FactoryFloor-0.1.34.dmg"
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
