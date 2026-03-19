cask "factoryfloor" do
  version "0.1.31"
  sha256 "189398fbf605a232118971cbb7d4965d67f32b795861420e5c93e23f0bd0a495"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.31/FactoryFloor-0.1.31.dmg"
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
