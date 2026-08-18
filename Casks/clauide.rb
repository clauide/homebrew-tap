cask "clauide" do
  version "0.1.8"
  sha256 "f37e04b214c1bc1e4e1bbe47af24f887e08fab630f2eb8e51e1389bb68cad584"

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
