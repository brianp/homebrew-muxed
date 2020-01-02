class MuxedBin < Formula
  desc "Another TMUX project manager"
  version "0.8.1"
  homepage "https://github.com/brianp/muxed"
  url "https://github.com/brianp/muxed/releases/download/#{version}/muxed-#{version}-x86_64-apple-darwin.tar.gz"
  sha256 "05dbc136b3de30d2f190bb6f0008cea8b6ec52f70ac6e180679c3b92d78d64c2"

  def install
    bin.install "muxed"
  end

  test do
    (testpath/"testconfig.yml").write("---\nwindows:\n  - exit: exit")
    system "#{bin}/muxed", "testconfig", "-p #{testpath}"
  end
end
