class Muxednew < Formula
  desc "CLI tool to generate new project configuration files for Muxed"
  homepage "https://github.com/brianp/muxednew"
  sha256 "260c8150281322fe9b4ad3609cb26e9aa32a94ae278e7046ee22c1593556306b"
  head "https://github.com/brianp/muxednew.git"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/muxednew"
  end

  test do
    system "#{bin}/muxed", "testconfig", "-p #{testpath}"
    File.exist?("#{testpath}/testcofig.yml")
  end
end
