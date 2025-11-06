class Kommit < Formula
  desc "A conventional commit generator made with Kotlin!"
  homepage "https://github.com/OmyDaGreat/Kommit"
  license "MIT"
  version "v3.0.13"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.13/kommit-macos-arm64"
    sha256 "7e11191e18b25b51c0b2e7a1ada2aa6a15d2df05a8215334b7fd5184e8253462"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.13/kommit-macos-x64"
    sha256 "8e62ab38bc99cf1e9bba7ed82298b1981ca538d3b1318b73b72da425bf34e0aa"
  elsif OS.linux?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.13/kommit-linux-x64"
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
