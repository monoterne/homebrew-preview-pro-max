cask "preview-pro-max" do
  version "0.2.2"

  on_sequoia :or_older do
    sha256 "aa138fc6820cb2b0b51801fe02d52788ced0ad83b926996fa696ba5378aed2a6"
    url "https://github.com/monoterne/PreviewProMax/releases/download/v#{version}/PreviewProMax-mac-legacy.app.zip"
  end
  on_tahoe :or_newer do
    sha256 "7d5c9f7f241867ca369d015acf8f0375c7ec6fee67c8091532baa4ae3c415a61"
    url "https://github.com/monoterne/PreviewProMax/releases/download/v#{version}/PreviewProMax-mac-adaptive.app.zip"
  end

  name "Preview Pro Max"
  desc "Desktop PDF viewer"
  homepage "https://github.com/monoterne/PreviewProMax"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Preview Pro Max.app"
end
