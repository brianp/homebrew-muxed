class MuxedBin < Formula
  desc "Another TMUX project manager"
  version "0.8.0"
  homepage "https://github.com/brianp/muxed"
  url "https://github.com/brianp/muxed/releases/download/#{version}/muxed-#{version}-x86_64-apple-darwin.tar.gz"
  sha256 "ae7702a1d44bbe2af4b9b8440cc2756dd5a6f4d18f1b9e889b79ffa3e619e7b6"

  def install
    bin.install "muxed"
  end

  test do
    (testpath/"testconfig.yml").write("---\nwindows:\n  - exit: exit")
    system "#{bin}/muxed", "testconfig", "-p #{testpath}"
  end
end
