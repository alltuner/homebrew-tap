cask "factoryfloor" do
  version "0.1.6"
  sha256 "5a51bdccbcdb17d06a7a942e4e5e56a1d00da28f5769c77c5cd2a5ddacd02952"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.6/FactoryFloor-0.1.6.dmg"
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
