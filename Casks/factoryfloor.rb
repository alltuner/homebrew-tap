cask "factoryfloor" do
  version "0.1.17"
  sha256 "4a820520f7ebf4b880cbe45b5615de9d04ef2deaa6c0cee72345f8d7e9f401c9"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.17/FactoryFloor-0.1.17.dmg"
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
