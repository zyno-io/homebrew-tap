class Sp2p < Formula
  desc "Secure peer-to-peer file transfer"
  homepage "https://sp2p.io"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zyno-io/sp2p/releases/download/v0.6.0/sp2p_darwin_arm64.tar.gz"
      sha256 "d526775d27cce093d1f259b2dba3a7ed9cef78b226df7dbdbdb5ca5a57b2a833"
    end
    on_intel do
      url "https://github.com/zyno-io/sp2p/releases/download/v0.6.0/sp2p_darwin_amd64.tar.gz"
      sha256 "f521cc63e6bcd6c37781227537a4867247cf4694e6cb6690bca79728d93f17e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zyno-io/sp2p/releases/download/v0.6.0/sp2p_linux_arm64.tar.gz"
      sha256 "95234bfecff78e561b7dd783d51d74b51b64456ea6f8924392ec2a71d1ba3585"
    end
    on_intel do
      url "https://github.com/zyno-io/sp2p/releases/download/v0.6.0/sp2p_linux_amd64.tar.gz"
      sha256 "54be5f91325bf75324be4d7e89f4cdd18401969db72c273b4231734d4191c3db"
    end
  end

  def install
    bin.install "sp2p"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sp2p version")
  end
end
