cask "factoryfloor" do
  version "0.1.28"
  sha256 "fa630a0cd694aee448cdd5f18e6e9cae55d51156cd4af3e93ecb936e056f72b1"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.28/FactoryFloor-0.1.28.dmg"
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
