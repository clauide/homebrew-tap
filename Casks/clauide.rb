cask "clauide" do
  version "0.1.1"
  sha256 "3a054151f5824fde6a537e2c1e5c06d1d96b49df30271055c61908eb83955420"

  url "https://github.com/clauide/clauide/releases/download/v#{version}/Clauide-#{version}-arm64.zip"
  name "Clauide"
  desc "Isolated Claude Code sessions in Docker containers"
  homepage "https://github.com/clauide/clauide"

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  auto_updates true

  app "Clauide.app"

  zap trash: [
    "~/Library/Application Support/Clauide",
    "~/Library/Preferences/com.clauide.plist",
    "~/Library/Saved Application State/com.clauide.savedState",
  ]
end
