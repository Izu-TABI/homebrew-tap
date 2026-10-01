cask "sidewindow" do
  version "0.3.0"
  sha256 "926cd1e94a598349e5904e1c9b6844dcbba06b5ff33295c3394547b5b65ea61e"

  url "https://github.com/Izu-TABI/SideWindow/releases/download/v#{version}/SideWindow.zip"
  name "SideWindow"
  desc "Keep the window you're referring to always on top"
  homepage "https://github.com/Izu-TABI/SideWindow"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "SideWindow.app"

  zap trash: "~/Library/Preferences/com.odentabetai.SideWindow.plist"

  caveats <<~EOS
    SideWindow is not notarized by Apple, so macOS blocks it on first launch.
    Open System Settings > Privacy & Security and click "Open Anyway".
  EOS
end
