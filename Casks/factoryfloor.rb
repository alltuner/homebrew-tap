cask "factoryfloor" do
  version "0.1.75"
  sha256 "fb33b1400a2a1884d22423ed8fed0fd6aaa49fe53df48ecfc5d1aa91e21019b0"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.75/FactoryFloor.dmg"
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
