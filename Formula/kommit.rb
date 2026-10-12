class Kommit < Formula
  desc "A conventional commit generator made with Kotlin!"
  homepage "https://github.com/OmyDaGreat/Kommit"
  license "MIT"
  version "v3.0.25"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.25/kommit-macos-arm64"
    sha256 "4c3af380ab1c4b033d0a881a295c50e4f9aa933b13eed759822e624edba14820"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.25/kommit-macos-x64"
    sha256 "1ab02ace6be5521ca541dc09503a7c3c69f2a4bdf8b36ba496895910daa1e651"
  elsif OS.linux?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.25/kommit-linux-x64"
    sha256 "082713be2a4200e6bf548c497f95d014c7060777d45acffc8f70638d0b7a80c6"
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
