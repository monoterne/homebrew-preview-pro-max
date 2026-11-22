cask "preview-pro-max" do
  version "0.3.1"

  on_sequoia :or_older do
    sha256 "4b8163d20e27b90d2845ad32f8e4dec69b82d90ba4633ce9ab38bbcc8e3e7b59"
    url "https://github.com/monoterne/PreviewProMax/releases/download/v#{version}/PreviewProMax-mac-legacy.app.zip"
  end
  on_tahoe :or_newer do
    sha256 "5726b1db5900357f6dd31dee14437944376c332373462c478ce1c92a5d319343"
    url "https://github.com/monoterne/PreviewProMax/releases/download/v#{version}/PreviewProMax-mac-adaptive.app.zip"
  end

  name "Preview Pro Max"
  desc "Desktop PDF viewer"
  homepage "https://github.com/monoterne/PreviewProMax"

  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "Preview Pro Max.app"
end
