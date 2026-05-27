cask "claudia-monitor" do
  version "0.2.0"
  sha256 "e8366b2ed21364377297cbd1fe094ff9a8ab0e5c24c3d912311ce5e3c02356b9"

  url "https://github.com/sudyke/Claudia/releases/download/v#{version}/Claudia-#{version}.dmg",
      verified: "github.com/sudyke/Claudia/"
  name "Claudia"
  desc "Menu bar app that monitors Docker, Supabase, and a local dev server"
  homepage "https://github.com/sudyke/Claudia"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Claudia.app"

  # Ad-hoc signed: macOS Gatekeeper will block the first launch.
  # Right-click the app in Finder → Open → confirm.
  caveats <<~EOS
    Claudia is ad-hoc signed (no paid Apple Developer ID).

    The first time you launch it, macOS Gatekeeper will block it. Either:
      • Right-click Claudia.app in Finder → Open → Open
      • Or run:  xattr -dr com.apple.quarantine /Applications/Claudia.app

    After that, it launches normally.
  EOS

  zap trash: [
    "~/Library/Preferences/com.kamy.Claudia.plist",
    "~/Library/Saved Application State/com.kamy.Claudia.savedState",
  ]
end
