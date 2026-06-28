cask "wopener" do
  version "1.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/xkaper001/wopener/releases/download/v#{version}/Wopener-#{version}.dmg"
  name "Wopener"
  desc "A Web Opener Apple forgot."
  homepage "https://wopener.com"

  depends_on macos: ">= :tahoe" # macOS 26+

  app "Wopener.app"

  zap trash: [
    "~/Library/Preferences/dev.xkaper.Wopener.plist",
    "~/Library/Caches/dev.xkaper.Wopener",
  ]
end

