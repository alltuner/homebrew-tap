cask "factoryfloor" do
  version "0.1.18"
  sha256 "cd4640f607726400e32667d641bf7b89fbfcc7a5a7b64d128993c2588cfbef59"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.18/FactoryFloor-0.1.18.dmg"
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
