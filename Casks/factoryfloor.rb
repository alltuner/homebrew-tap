cask "factoryfloor" do
  version "0.1.60"
  sha256 "b532604d6c04970186d45b83cb497dcdd565819d81b8beb511366ced5ce7c79f"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.60/FactoryFloor.dmg"
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
