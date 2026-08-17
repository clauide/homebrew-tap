cask "clauide" do
  version "0.1.5"
  sha256 "726cafaedb7153b8907747df94303840d17873b46fd88039bec8bdde10cc9a0b"

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
