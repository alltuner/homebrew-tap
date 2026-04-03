cask "factoryfloor" do
  version "0.1.64"
  sha256 "cbe57a0d14c1180b631665fe59f31f64aa06c606b5cc86ac87e2b17f15fce013"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.64/FactoryFloor.dmg"
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
