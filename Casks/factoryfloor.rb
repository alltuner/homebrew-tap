cask "factoryfloor" do
  version "0.1.40"
  sha256 "f949e8f2a844040848f705da0a86194274adffc22d61ece8dde060f45936e143"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.40/FactoryFloor-0.1.40.dmg"
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
