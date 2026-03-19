cask "factoryfloor" do
  version "0.1.30"
  sha256 "bae3bed64c830943a7f59e1e427b18371b99a1c51dd73629c4df91ace0a7945c"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.30/FactoryFloor-0.1.30.dmg"
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
