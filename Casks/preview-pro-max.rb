cask "preview-pro-max" do
  version "0.3"

  on_sequoia :or_older do
    sha256 "5c4aa0894138e12eb825fba88c9e43f17f08cf06562ad240c32a1ac43af58895"
    url "https://github.com/monoterne/PreviewProMax/releases/download/v#{version}/PreviewProMax-mac-legacy.app.zip"
  end
  on_tahoe :or_newer do
    sha256 "b32019404839788afdc3c43865b44b6b7f1dc39e9f55d34a1061a8a0c48810da"
    url "https://github.com/monoterne/PreviewProMax/releases/download/v#{version}/PreviewProMax-mac-adaptive.app.zip"
  end

  name "Preview Pro Max"
  desc "Desktop PDF viewer"
  homepage "https://github.com/monoterne/PreviewProMax"

  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "Preview Pro Max.app"
end
