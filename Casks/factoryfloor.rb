cask "factoryfloor" do
  version "0.1.23"
  sha256 "bc9744880126061ea67ebcdedd3dfae2990dc33a35c60a076a2ce400281742cb"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.23/FactoryFloor-0.1.23.dmg"
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
