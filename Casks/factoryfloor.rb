cask "factoryfloor" do
  version "0.1.67"
  sha256 "485696d054412e7f092d7eaf472086745e20158408d5d55f7880d52122c9b000"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.67/FactoryFloor.dmg"
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
