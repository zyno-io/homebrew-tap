class Sp2p < Formula
  desc "Secure peer-to-peer file transfer"
  homepage "https://sp2p.io"
  version "0.7.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zyno-io/sp2p/releases/download/v0.7.5/sp2p_darwin_arm64.tar.gz"
      sha256 "4c15e4d8aa755595f9d19bf647ef8651fa6f117ae9e4e6e0451db9902c9c4c28"
    end
    on_intel do
      url "https://github.com/zyno-io/sp2p/releases/download/v0.7.5/sp2p_darwin_amd64.tar.gz"
      sha256 "a4fc9e2cab6df9d3798baa35b07d4e14f8b9d625181cfe7fd7e22f2e26c28d0d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zyno-io/sp2p/releases/download/v0.7.5/sp2p_linux_arm64.tar.gz"
      sha256 "265596726b1cc49990d4862a6bdc4bf6cd74711bd6eb64e43065faee7a8af3ee"
    end
    on_intel do
      url "https://github.com/zyno-io/sp2p/releases/download/v0.7.5/sp2p_linux_amd64.tar.gz"
      sha256 "ce317c6b305c0c1519c7e4f47f11433e607521b2d779c8a6f703f116fb8ecb76"
    end
  end

  def install
    bin.install "sp2p"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sp2p version")
  end
end
