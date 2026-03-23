cask "factoryfloor" do
  version "0.1.41"
  sha256 "f6c9855511e40500b63d3e0c7d293a73d527ac3697a4d92c2b6992872774c984"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.41/FactoryFloor-0.1.41.dmg"
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
