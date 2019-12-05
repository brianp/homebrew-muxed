class MuxedBin < Formula
  desc "Another TMUX project manager"
  version "0.7.1"
  homepage "https://github.com/brianp/muxed"
  url "https://github.com/brianp/muxed/releases/download/#{version}/muxed-#{version}-x86_64-apple-darwin.tar.gz"
  sha256 "3add9931b7b57cbfde3af6381156098de033879bc9615ad1fb7f9a80a42d00d3"

  def install
    bin.install "muxed"
  end

  test do
    (testpath/"testconfig.yml").write("---\nwindows:\n  - exit: exit")
    system "#{bin}/muxed", "testconfig", "-p #{testpath}"
  end
end
