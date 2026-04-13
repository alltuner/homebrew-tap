cask "factoryfloor" do
  version "0.1.70"
  sha256 "9550f2f988bf949e3587656dbb52b2c5f9374a3444870c4651ce91f45a6bf3cf"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.70/FactoryFloor.dmg"
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
