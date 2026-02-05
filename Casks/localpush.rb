cask "localpush" do
  version "0.1.3"
  sha256 "5882f752d563d0f507de69720be3e0a104b2edab65777ea8ec0178424da8c39a"

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
