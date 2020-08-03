class MuxedBin < Formula
  desc "Another TMUX project manager"
  version "0.8.2"
  homepage "https://github.com/brianp/muxed"
  url "https://github.com/brianp/muxed/releases/download/#{version}/muxed-#{version}-x86_64-apple-darwin.tar.gz"
  sha256 "7a3dee15ea74b8827eccc08cf8f8e159f42b78b732d1480afe769bffda5bde79"

  def install
    bin.install "muxed"
  end

  test do
    (testpath/"testconfig.yml").write("---\nwindows:\n  - exit: exit")
    system "#{bin}/muxed", "testconfig", "-p #{testpath}"
  end
end
