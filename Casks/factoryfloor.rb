cask "factoryfloor" do
  version "0.1.36"
  sha256 "18df3529cb79781e067e80bda1e50138397c2b6f94265442304f34751cba1640"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.36/FactoryFloor-0.1.36.dmg"
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
