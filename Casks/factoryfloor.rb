cask "factoryfloor" do
  version "0.1.35"
  sha256 "5124f143fb3a29e18b602481d4184df35178430419b35299f49402e103706406"

  url "https://github.com/alltuner/factoryfloor/releases/download/v0.1.35/FactoryFloor-0.1.35.dmg"
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
