cask "factoryfloor" do
  version "0.1.50"
  sha256 "30cc07aac0ad0d753457bc8e5e90f19b6533fbf3e95128c9ca30e502e75a74e6"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.50/FactoryFloor.dmg"
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
