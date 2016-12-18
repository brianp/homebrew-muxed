class Muxed < Formula
  desc "Another TMUX project manager"
  homepage "https://github.com/brianp/muxed"
  url "https://github.com/brianp/muxed/archive/0.5.0.tar.gz"
  sha256 "93cc3e9f1581b62108df92c85e53a1ffdc5ae6cb23d97c2a56145d00fc8f8c5e"
  head "https://github.com/brianp/muxed.git"

  depends_on "rust" => :build
  depends_on "muxednew" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/muxed"
  end

  test do
    (testpath/"testconfig.yml").write("---\nwindows:\n  - exit: exit")
    system "#{bin}/muxed", "testconfig", "-p #{testpath}"
  end
end
