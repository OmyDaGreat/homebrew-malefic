class Kommit < Formula
  desc "A conventional commit generator made with Kotlin!"
  homepage "https://github.com/OmyDaGreat/Kommit"
  license "MIT"
  version "v3.0.17"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.17/kommit-macos-arm64"
    sha256 "4f4d9c4c777e4c551c09097d8f543749cec996779a3708e09d0a652df4aeeb85"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.17/kommit-macos-x64"
    sha256 "27e562f8969a79e061c46e64865aed8c8230d9f730359f60aa6860e1d800d419"
  elsif OS.linux?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.17/kommit-linux-x64"
    sha256 "787c9473f4444e5711426e4c2aeea5e72abc499899209097977408a551d20ed3"
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
