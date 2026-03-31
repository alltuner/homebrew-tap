cask "factoryfloor" do
  version "0.1.54"
  sha256 "8d827fbc291de0919f8026d2fa403a3e2bf8fa36ecdd3f22ea6d557a351e4cdd"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.54/FactoryFloor.dmg"
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
