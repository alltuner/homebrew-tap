cask "factoryfloor" do
  version "0.1.14"
  sha256 "b6d93f7f2274403b7ca7380c5d6429660729f0ed480e3a728f8397d5bc5b2932"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.14/FactoryFloor-0.1.14.dmg"
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
