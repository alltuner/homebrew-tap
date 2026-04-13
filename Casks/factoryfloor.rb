cask "factoryfloor" do
  version "0.1.74"
  sha256 "a57f4aee86e1f45deb2b4342ef4a14707404e469b03b1501d71a83edec9be8ba"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.74/FactoryFloor.dmg"
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
