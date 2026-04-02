cask "factoryfloor" do
  version "0.1.63"
  sha256 "65880fdd9aacc75413c0fdeb6440a5c7a5f479359abd0f557f29c312c283c83f"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.63/FactoryFloor.dmg"
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
