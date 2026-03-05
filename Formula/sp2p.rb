class Sp2p < Formula
  desc "Secure peer-to-peer file transfer"
  homepage "https://sp2p.io"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zyno-io/sp2p/releases/download/v0.1.0/sp2p_darwin_arm64.tar.gz"
      sha256 "4ddb21bc08dca9932c7301b9a4d449fd0ffaff9db6dcf63db269f2618b69599b"
    end
    on_intel do
      url "https://github.com/zyno-io/sp2p/releases/download/v0.1.0/sp2p_darwin_amd64.tar.gz"
      sha256 "775cef09127641bfb964fb10973fd7313e2498831aa2d0b5a460106ada6be00b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zyno-io/sp2p/releases/download/v0.1.0/sp2p_linux_arm64.tar.gz"
      sha256 "1620c7a38fee9f61a37856533739726bb09cfb566ea46032af223ee9f37d2480"
    end
    on_intel do
      url "https://github.com/zyno-io/sp2p/releases/download/v0.1.0/sp2p_linux_amd64.tar.gz"
      sha256 "51b8f50a1f308de962a700cd1df15ad7cec5714d75fc7f2d1f2b1296eaa1787f"
    end
  end

  def install
    bin.install "sp2p"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sp2p version")
  end
end
