cask "factoryfloor" do
  version "0.1.21"
  sha256 "4dc07a6dbc968a06606be361ea88fec1fca4c5094e4e44f4f25a6728b00062f7"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.21/FactoryFloor-0.1.21.dmg"
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
