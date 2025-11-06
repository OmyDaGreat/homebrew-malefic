class Kommit < Formula
  desc "A conventional commit generator made with Kotlin!"
  homepage "https://github.com/OmyDaGreat/Kommit"
  license "MIT"
  version "v3.0.11"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.11/kommit-macos-arm64"
    sha256 "6d4519f9c9199461aa42321199a87d277b1b8c0f04ed6207af6506a8a83ddeaa"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.11/kommit-macos-x64"
    sha256 "c82ef934d47016902d43c4f4ecd9cf7ec5cda7b527a9e23f99d93b8b33a01189"
  elsif OS.linux?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.11/kommit-linux-x64"
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
