cask "factoryfloor" do
  version "0.1.27"
  sha256 "978f4a01020043da068e4bc1cad1b725dbc945e8948f145701d4ab1a43d59477"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.27/FactoryFloor-0.1.27.dmg"
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
