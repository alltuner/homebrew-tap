cask "factoryfloor" do
  version "0.1.44"
  sha256 "218ed1f5a24d1b45b59e7d4fa867ed9f80f265e3b790b9cee86e11c5afba871d"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.44/FactoryFloor-0.1.44.dmg"
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
