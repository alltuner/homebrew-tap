cask "factoryfloor" do
  version "0.1.37"
  sha256 "008d66806cfaf3a97fe1572493f827c087cebe278b1afd264485d67caeb79e05"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.37/FactoryFloor-0.1.37.dmg"
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
