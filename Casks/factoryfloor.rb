cask "factoryfloor" do
  version "0.1.55"
  sha256 "07c85ad631e1b8150f1594ce847170584dab1c03c3a105947d9a4eb0b3619d62"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.55/FactoryFloor.dmg"
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
