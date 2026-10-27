class Kommit < Formula
  desc "A conventional commit generator made with Kotlin!"
  homepage "https://github.com/OmyDaGreat/Kommit"
  license "MIT"
  version "v5.0.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v5.0.0/kommit-macos-arm64"
    sha256 "159f6a3aeb7db9e44338a61ef12f24f833fb0ebeaa133c48a7850af381290a71"
  elsif OS.linux?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v5.0.0/kommit-linux-x64"
    sha256 "c208c4b91e6a58cac3247091efdf02b713301b87a161b573033592dac239c4bf"
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
