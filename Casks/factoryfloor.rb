cask "factoryfloor" do
  version "0.1.29"
  sha256 "e374bfeecf17cdfb43bfa0a97a19a2ac4d857d504585dcc2e9e42b8e2a4176ab"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.29/FactoryFloor-0.1.29.dmg"
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
