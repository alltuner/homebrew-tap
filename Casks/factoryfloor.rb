cask "factoryfloor" do
  version "0.1.15"
  sha256 "e3b42220e00d30c9b975d7e5ae3c45eb8bfb50910e31e2dad2b3e3bcf979a801"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.15/FactoryFloor-0.1.15.dmg"
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
