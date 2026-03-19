cask "factoryfloor" do
  version "0.1.32"
  sha256 "b0d9e7802580f877a22163ca502daf2bda8dd030854d8b61f42f5cfe1b4101ed"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.32/FactoryFloor-0.1.32.dmg"
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
