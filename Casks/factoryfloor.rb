cask "factoryfloor" do
  version "0.1.58"
  sha256 "bfdc9fb0c03ead4354b49e5a6dbe4a0a5786c0ebf1fc9e4c26c3d92c0d425e31"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.58/FactoryFloor.dmg"
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
