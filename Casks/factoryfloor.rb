cask "factoryfloor" do
  version "0.1.20"
  sha256 "8a5a3a1264752dd485b2df8e7f11f93835893a64126795b811d5eb298e1ca658"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.20/FactoryFloor-0.1.20.dmg"
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
