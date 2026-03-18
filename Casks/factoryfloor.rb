cask "factoryfloor" do
  version "0.1.19"
  sha256 "c59c41492d5360e6a59f25b04c832b8c3a7eb7f62b74eb1102e534765766b071"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.19/FactoryFloor-0.1.19.dmg"
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
