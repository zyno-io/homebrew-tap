class Sp2p < Formula
  desc "Secure peer-to-peer file transfer"
  homepage "https://sp2p.io"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zyno-io/sp2p/releases/download/v0.3.0/sp2p_darwin_arm64.tar.gz"
      sha256 "e75318beb8f42249b29ac957d68d93ec84773051570118e16901e3f74bc0788f"
    end
    on_intel do
      url "https://github.com/zyno-io/sp2p/releases/download/v0.3.0/sp2p_darwin_amd64.tar.gz"
      sha256 "43e5050ee7a5bf771240b832ee010ca0c149a8d04dbc1fd336990eb346939af0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zyno-io/sp2p/releases/download/v0.3.0/sp2p_linux_arm64.tar.gz"
      sha256 "de30ce9e91dd9aac4ad3d9e9cfb2defcc8cfc2f07bc08d8341fbe7c56376e4bf"
    end
    on_intel do
      url "https://github.com/zyno-io/sp2p/releases/download/v0.3.0/sp2p_linux_amd64.tar.gz"
      sha256 "b8b3aeae1f002bc8079c6069f6e9a5417216a2a8e7c1a918197e25730b16d960"
    end
  end

  def install
    bin.install "sp2p"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sp2p version")
  end
end
