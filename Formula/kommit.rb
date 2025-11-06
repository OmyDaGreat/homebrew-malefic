class Kommit < Formula
  desc "A conventional commit generator made with Kotlin!"
  homepage "https://github.com/OmyDaGreat/Kommit"
  license "MIT"
  version "v3.0.10"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.10/kommit-macos-arm64"
    sha256 "0792b6f731567c7d44ca2303d74fc80cc55adb11e87fced627ab9bbe14515b96"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.10/kommit-macos-x64"
    sha256 "429ffd1b8c93e0fb48fb305db4d71c3ff20cc15bacce2b8b7ba4c77524ce0dca"
  elsif OS.linux?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.10/kommit-linux-x64"
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
