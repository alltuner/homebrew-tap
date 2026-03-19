cask "factoryfloor" do
  version "0.1.38"
  sha256 "bb856bd179888e1fbc0ad6138d0f147d588efed680bc57f526dec406c869e941"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.38/FactoryFloor-0.1.38.dmg"
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
