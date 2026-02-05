cask "localpush" do
  version "0.1.2"
  sha256 "edbbbc68308f012c77f6cd7c8990dc1e818d922a256151415cd44f254d8ebbfa"

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
