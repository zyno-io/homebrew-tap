class Sp2p < Formula
  desc "Secure peer-to-peer file transfer"
  homepage "https://sp2p.io"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zyno-io/sp2p/releases/download/v0.2.0/sp2p_darwin_arm64.tar.gz"
      sha256 "95386da936a2515c220141f566d53b1dc531f55ef78e42f74c1be2069355ced9"
    end
    on_intel do
      url "https://github.com/zyno-io/sp2p/releases/download/v0.2.0/sp2p_darwin_amd64.tar.gz"
      sha256 "2bf5645f1ff5c8939e41e3b3e29afe7b57f2ea3b4bb36490ab6ad39f7cc988c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zyno-io/sp2p/releases/download/v0.2.0/sp2p_linux_arm64.tar.gz"
      sha256 "c80e68e9660fb590643b7cf06a0477d8e605963e50ff47f78647df23f85f0f19"
    end
    on_intel do
      url "https://github.com/zyno-io/sp2p/releases/download/v0.2.0/sp2p_linux_amd64.tar.gz"
      sha256 "464415c154a953257799718c18bba42914490715d3c1f4e331c3dae81647a501"
    end
  end

  def install
    bin.install "sp2p"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sp2p version")
  end
end
