cask "audient-id-mixer" do
  version "4.4.2b6"
  sha256 "cd21b2e0aaaf8511307550255a1c4e67308f0480a42778995ed2546847818dfc"

  url "https://d9w4fhj63j193.cloudfront.net/2025/iD48/Drivers/iD%20v#{version}.dmg"
  name "Audient iD Mixer"
  desc "Driver/utility software for Audient iD audio interfaces"
  homepage "https://audient.com/products"

  depends_on macos: ">= :high_sierra"

  # auto_updates true ### Disabled for now. To be tested if this is a self-updating app.
  app "iD.app"

  uninstall quit: "com.audient.id"

  zap trash: [
    "~/Library/Application Support/Audient",
    "~/Library/Caches/com.audient.id",
    "~/Library/HTTPStorages/com.audient.id.binarycookies",
    "~/Library/Logs/com.audient.iD",
    "~/Library/Preferences/com.audient.id.plist",
    "~/Library/WebKit/com.audient.id",
  ]
end

