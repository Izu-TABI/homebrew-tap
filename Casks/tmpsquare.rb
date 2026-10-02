cask "tmpsquare" do
  version "0.2.0"
  sha256 "fd81effe9eda9a43d6fa36c0bc5446da74f5e3fa80f00e07e037b066af5a366f"

  url "https://github.com/Izu-TABI/TmpSquare/releases/download/v#{version}/TmpSquare.zip"
  name "TmpSquare"
  desc "Temporary file shelf that appears when you shake the cursor while dragging"
  homepage "https://github.com/Izu-TABI/TmpSquare"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "TmpSquare.app"

  zap trash: [
    "~/Library/Caches/com.odentabetai.TmpSquare",
    "~/Library/Preferences/com.odentabetai.TmpSquare.plist",
  ]

  caveats <<~EOS
    TmpSquare is not notarized by Apple, so macOS blocks it on first launch.
    Open System Settings > Privacy & Security and click "Open Anyway".
  EOS
end
