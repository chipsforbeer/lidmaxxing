# Homebrew formula for lidmaxxing.
#
# To ship this:
#   1. Create a GitHub release, e.g. tag v0.1.0.
#   2. Get the tarball sha256:
#        curl -sL https://github.com/chipsforbeer/lidmaxxing/archive/refs/tags/v0.1.0.tar.gz | shasum -a 256
#   3. Fill in `url` and `sha256` below.
#   4. Put this file in a tap repo named `homebrew-tap`, then:
#        brew install chipsforbeer/tap/lidmaxxing
class Lidmaxxing < Formula
  desc "Keep your MacBook awake with the lid closed so coding agents keep running"
  homepage "https://github.com/chipsforbeer/lidmaxxing"
  url "https://github.com/chipsforbeer/lidmaxxing/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "REPLACE_WITH_TARBALL_SHA256"
  license "MIT"
  version "0.1.0"

  depends_on :macos

  def install
    bin.install "bin/lidmaxxing"
  end

  test do
    assert_match "lidmaxxing #{version}", shell_output("#{bin}/lidmaxxing version")
  end
end
