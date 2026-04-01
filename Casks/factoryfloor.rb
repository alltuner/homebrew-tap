cask "factoryfloor" do
  version "0.1.57"
  sha256 "ebe17a04fed59e5a7d996b6bc96d04c0af5ef1b4cdb17d365ce9093af026d839"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.57/FactoryFloor.dmg"
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
