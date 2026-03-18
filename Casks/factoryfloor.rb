cask "factoryfloor" do
  version "0.1.26"
  sha256 "cfebd2139bdd48fcf826131a65556b922f4a66a8b8f6eeed56fdf761ecb7910c"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.26/FactoryFloor-0.1.26.dmg"
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
