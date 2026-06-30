cask "wopener" do
  version "1.1.0"
  sha256 "ec103e37362a61c57fffe4eab31494ef8b97d3ee625076ea9e36ea0f363afddb"

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

