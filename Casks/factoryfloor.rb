cask "factoryfloor" do
  version "0.1.39"
  sha256 "78cfdb7f0117b04c5fe0a8d652adef9b486d06d524e1dbb05f4a2754341d3eac"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.39/FactoryFloor-0.1.39.dmg"
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
