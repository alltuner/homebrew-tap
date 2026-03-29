cask "factoryfloor" do
  version "0.1.48"
  sha256 "9867ab04643a8d70ca86f88b8866bb24448ad33a51885350c9b9b62829855a37"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.48/FactoryFloor-0.1.48.dmg"
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
