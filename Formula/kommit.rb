class Kommit < Formula
  desc "A conventional commit generator made with Kotlin!"
  homepage "https://github.com/OmyDaGreat/Kommit"
  license "MIT"
  version "v3.0.9"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.9/kommit-macos-arm64"
    sha256 "ba143812f20fefb9a5e1a14a72075067614b5ecf376d0e5e8324419dd0eba865"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.9/kommit-macos-x64"
    sha256 "19b6ddcea6b5798fab48a4c1d98664fa7ee1778ac36d6429f722215fd9af2493"
  elsif OS.linux?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.9/kommit-linux-x64"
    sha256 "7291322048cd1e97ef00f93c570ce170e5b93c06117f97a2e5c5bb46e18928e6"
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
