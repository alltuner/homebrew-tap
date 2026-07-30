cask "factoryfloor" do
  version "0.1.78"
  sha256 "d514097817d1d281129dc7ced0a768e1a1c0bf868a88925c35a4e1ac5ea01bc2"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.78/FactoryFloor.dmg"
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
