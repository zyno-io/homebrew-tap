class Sp2p < Formula
  desc "Secure peer-to-peer file transfer"
  homepage "https://sp2p.io"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zyno-io/sp2p/releases/download/v0.6.1/sp2p_darwin_arm64.tar.gz"
      sha256 "a00f76c5cae137aa9f6a4d3e0965afa06d9dbe17b1fd5775f2840e0ceee68d49"
    end
    on_intel do
      url "https://github.com/zyno-io/sp2p/releases/download/v0.6.1/sp2p_darwin_amd64.tar.gz"
      sha256 "09c902208757b716a0b78445c002a8e1c0999ba1775645b52790956f3af7c233"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zyno-io/sp2p/releases/download/v0.6.1/sp2p_linux_arm64.tar.gz"
      sha256 "c0fbbc08c2035bb43ee8c95cdf57188753a867215b33902010de9072033c4c4f"
    end
    on_intel do
      url "https://github.com/zyno-io/sp2p/releases/download/v0.6.1/sp2p_linux_amd64.tar.gz"
      sha256 "3f70fc7c770990b7ab7751120da4634ed9ee02db442d71abfd7f54840936d363"
    end
  end

  def install
    bin.install "sp2p"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sp2p version")
  end
end
