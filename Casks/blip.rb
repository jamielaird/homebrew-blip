cask "blip" do
  version "0.3.1"
  sha256 "e4cf3a61d257d09e4d5dffd527928e2cf758ab1cfe3f12914d9e80510f75c145"

  url "https://github.com/jamielaird/homebrew-blip/releases/download/v#{version}/Blip-#{version}.zip"
  name "Blip"
  desc "Menu-bar monitor for healthchecks.io"
  homepage "https://github.com/jamielaird/blip"

  # Releases that carry the binary live in this tap repo, so check it for
  # newer versions.
  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Blip.app"

  # Blip is ad-hoc signed (not notarized), so strip the download quarantine
  # after install — otherwise macOS Gatekeeper blocks the first launch. This
  # gives `brew install --cask jamielaird/blip/blip` a clean first open.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Blip.app"]
  end

  zap trash: "~/Library/Preferences/app.blip.Blip.plist"
end
