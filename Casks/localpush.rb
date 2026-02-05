cask "localpush" do
  version "0.1.0"
  sha256 "894cb1955c935d64760ad9c9f6182c3a1abf5828191943543a95fbc77913fa8d"

  url "https://github.com/madshn/localpush/releases/download/v#{version}/LocalPush_#{version}_universal.dmg"
  name "LocalPush"
  desc "Push local file changes to webhooks with guaranteed delivery"
  homepage "https://github.com/madshn/localpush"

  auto_updates true
  depends_on macos: ">= :monterey"

  app "LocalPush.app"

  uninstall quit: "com.localpush.app",
            delete: "/Applications/LocalPush.app"

  zap trash: [
    "~/Library/Application Support/com.localpush.app",
    "~/Library/Logs/com.localpush.app",
    "~/Library/Caches/com.localpush.app",
    "~/Library/Preferences/com.localpush.app.plist",
    "~/Library/Saved Application State/com.localpush.app.savedState",
  ]
end
