cask "factoryfloor" do
  version "0.1.45"
  sha256 "ce7fdda12a994f288d9f81dd2c95d48c03a6d154104647de558f3d4fb961ddcf"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.45/FactoryFloor-0.1.45.dmg"
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
