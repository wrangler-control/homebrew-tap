cask "wrangler" do
  version "0.1.0"
  arch arm: "aarch64", intel: "x64"
  sha256 arm:   "8d0a7ae1feb29132399f869c0ee2dcf42f9669b35771462a6dfa3fc4f93aec74",
         intel: "65509969bb67fd4d589b7cd5cdaf4597dbcf0696a3a1610d64b3e7a9fd6db6b2"

  url "https://github.com/wrangler-control/releases/releases/download/v#{version}/Wrangler_#{version}_#{arch}.dmg",
      verified: "github.com/wrangler-control/releases/"
  name "Wrangler"
  desc "Control tower for engineers running parallel coding agents"
  homepage "https://wrangler-control.com/"

  auto_updates true
  depends_on macos: :ventura

  app "Wrangler.app"

  zap trash: [
    "~/Library/Application Support/com.wranglercontrol.app",
    "~/Library/Caches/com.wranglercontrol.app",
    "~/Library/Preferences/com.wranglercontrol.app.plist",
    "~/Library/Saved Application State/com.wranglercontrol.app.savedState",
    "~/Library/WebKit/com.wranglercontrol.app",
  ]
end
