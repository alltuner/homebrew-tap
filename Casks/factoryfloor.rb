cask "factoryfloor" do
  version "0.1.52"
  sha256 "f5e757f35616e6c33b3fe9228b712b8653a3104654b566fc626cc38768eb2982"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.52/FactoryFloor.dmg"
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
