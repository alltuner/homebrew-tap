cask "factoryfloor" do
  version "0.1.47"
  sha256 "a2c69afa7c1d6b772eea585f8558cf0f1d992c63cd64a9b1d645fe6870a285ad"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.47/FactoryFloor-0.1.47.dmg"
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
