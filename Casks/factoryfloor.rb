cask "factoryfloor" do
  version "0.1.71"
  sha256 "32d99ba6f0967f3e1b3a02e8125780ae87754bef61cb459434db1a1f8df05597"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.71/FactoryFloor.dmg"
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
