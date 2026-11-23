cask "preview-pro-max" do
  version "0.3.2"

  on_sequoia :or_older do
    sha256 "2d68eaa0f42a683bd4d145b7bfbaf125a374bfc8d9ad2cacc0b6ed52aa852114"
    url "https://github.com/monoterne/PreviewProMax/releases/download/v#{version}/PreviewProMax-mac-legacy.app.zip"
  end
  on_tahoe :or_newer do
    sha256 "076834d9d072bfde4686b140a56b4257eb00d66e8bc6ec737a18b4b467ce2a0d"
    url "https://github.com/monoterne/PreviewProMax/releases/download/v#{version}/PreviewProMax-mac-adaptive.app.zip"
  end

  name "Preview Pro Max"
  desc "Desktop PDF viewer"
  homepage "https://github.com/monoterne/PreviewProMax"

  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "Preview Pro Max.app"
end
