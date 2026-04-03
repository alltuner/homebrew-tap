cask "factoryfloor" do
  version "0.1.65"
  sha256 "fb4a9d67b5529e8d7116ae7148c2e9c26c519e44c8a38e26b243b24f0fc8cf11"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.65/FactoryFloor.dmg"
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
