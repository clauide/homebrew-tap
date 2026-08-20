cask "clauide" do
  version "0.1.12"
  sha256 "6d572f3acaa46bca69623930e357ef8edffb44c53a65c175e9acfeae4b0afef6"

  url "https://github.com/clauide/clauide/releases/download/v#{version}/Clauide-#{version}-arm64.zip"
  name "Clauide"
  desc "Isolated Claude Code sessions in Docker containers"
  homepage "https://github.com/clauide/clauide"

  depends_on macos: :monterey
  depends_on arch: :arm64

  auto_updates true

  app "Clauide.app"

  zap trash: [
    "~/Library/Application Support/Clauide",
    "~/Library/Preferences/com.clauide.plist",
    "~/Library/Saved Application State/com.clauide.savedState",
  ]
end
