cask "factoryfloor" do
  version "0.1.16"
  sha256 "c5e4c228c24d297ea488941899d5576a4033ed35e28b7a002ae527be3db24195"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.16/FactoryFloor-0.1.16.dmg"
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
