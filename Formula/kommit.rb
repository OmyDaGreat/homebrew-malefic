class Kommit < Formula
  desc "A conventional commit generator made with Kotlin!"
  homepage "https://github.com/OmyDaGreat/Kommit"
  license "MIT"
  version "v3.0.32"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.32/kommit-macos-arm64"
    sha256 "9bb177d30cda4be406b7354846543bc0bdf878b0400ac7339c5e172328bde586"
  elsif OS.linux?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.32/kommit-linux-x64"
    sha256 "9bcb118b29df1f887c54eae0c5eb632eb9d7a9776e205c706c30774ed2de5af6"
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "kommit-macos-arm64" => "kommit"
    elsif OS.linux?
      bin.install "kommit-linux-x64" => "kommit"
    end
  end

  test do
    system "#{bin}/kommit", "--help"
  end
end
