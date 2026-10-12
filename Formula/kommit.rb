class Kommit < Formula
  desc "A conventional commit generator made with Kotlin!"
  homepage "https://github.com/OmyDaGreat/Kommit"
  license "MIT"
  version "v3.0.24"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.24/kommit-macos-arm64"
    sha256 "638589a2a654c087cef5a8ddbf9237105f973ba72136fa8f610dc70e01ff9cbe"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.24/kommit-macos-x64"
    sha256 "14ceb531392e05b44544a0d4628b37133fe233760957916d7a4ce6dc45fdb5c8"
  elsif OS.linux?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.24/kommit-linux-x64"
    sha256 "2540bc100cf74bcc1d82fcbcf3879da449997a21e54d4b71c0b9f1ad3149ef48"
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
