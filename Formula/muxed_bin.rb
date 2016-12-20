class MuxedBin < Formula
  desc "Another TMUX project manager"
  version "0.5.0"
  homepage "https://github.com/brianp/muxed"
  url "https://github.com/brianp/muxed/releases/download/#{version}/muxed-complete-#{version}-x86_64-apple-darwin.tar.gz"
  sha256 "f518aa1d9e17c8cd6705f387d3f27a0aba1f2ecfbf98d57c2468201210a01825"

  def install
    bin.install "muxed"
    bin.install "muxednew"
  end

  test do
    (testpath/"testconfig.yml").write("---\nwindows:\n  - exit: exit")
    system "#{bin}/muxed", "testconfig", "-p #{testpath}"
  end
end
