class Kommit < Formula
  desc "A conventional commit generator made with Kotlin!"
  homepage "https://github.com/OmyDaGreat/Kommit"
  license "MIT"
  version "v3.0.14"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.14/kommit-macos-arm64"
    sha256 "6b53867f8a4756f98141b94d2688a5de747ca5ff955ab07a0340c1c13bccd8a2"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.14/kommit-macos-x64"
    sha256 "67fc1c86657c1c8ddcf7a4106669352f6d844fbf0b96a2c9ded87749fb9debb1"
  elsif OS.linux?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.14/kommit-linux-x64"
    sha256 "2753158e974c8567a9663b5f0d48a38e252710da924139d69cdf6f4b1f1ec50b"
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "kommit-macos-arm64" => "kommit"
    elsif OS.mac? && Hardware::CPU.intel?
      bin.install "kommit-macos-x64" => "kommit"
    elsif OS.linux?
      bin.install "kommit-linux-x64" => "kommit"
    end
  end

  test do
    system "#{bin}/kommit", "--help"
  end
end
