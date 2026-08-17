cask "clauide" do
  version "0.1.1"
  sha256 "078dd8ab17b5c9d4f180d0cfd0477e151e540493733504bfeed84cf3d457e5f0"

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
