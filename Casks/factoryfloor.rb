cask "factoryfloor" do
  version "0.1.49"
  sha256 "a712d7a56bcd5b049b1f0d7f0c7990766710387ccdf29ec141a37ba8ffcaa8eb"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.49/FactoryFloor.dmg"
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
