class MuxedBin < Formula
  desc "Another TMUX project manager"
  version "0.7.0"
  homepage "https://github.com/brianp/muxed"
  url "https://github.com/brianp/muxed/releases/download/#{version}/muxed-#{version}-x86_64-apple-darwin.tar.gz"
  sha256 "e16321eaf185922f667e2b58303e06f94e5831bb6216c94346ce17337de5ad4b"

  def install
    bin.install "muxed"
  end

  test do
    (testpath/"testconfig.yml").write("---\nwindows:\n  - exit: exit")
    system "#{bin}/muxed", "testconfig", "-p #{testpath}"
  end
end
