cask "factoryfloor" do
  version "0.1.72"
  sha256 "1bf4c062416a40a23054328fe9d772e5afbd928d4809bd5fd6821a7799bb36c2"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.72/FactoryFloor.dmg"
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
