cask "wopener" do
  version "1.1.1"
  sha256 "10dbd3c6adce1696427b9f6e43e5b00ead114ff48522570ecb2ac1d72d8741ba"

  url "https://github.com/xkaper001/wopener/releases/download/v#{version}/Wopener-#{version}.dmg"
  name "Wopener"
  desc "A Web Opener Apple forgot."
  homepage "https://wopener.com"

  depends_on macos: :tahoe

  app "Wopener.app"

  zap trash: [
    "~/Library/Preferences/dev.xkaper.Wopener.plist",
    "~/Library/Caches/dev.xkaper.Wopener",
  ]
end

