class Kommit < Formula
  desc "A conventional commit generator made with Kotlin!"
  homepage "https://github.com/OmyDaGreat/Kommit"
  license "MIT"
  version "v3.0.15"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.15/kommit-macos-arm64"
    sha256 "468279b06b4e291988c3bf2c68272a59722e1ce2a1000e65d32d51b510cdee16"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.15/kommit-macos-x64"
    sha256 "d2d312efba94223da4a685e9c83daefe77741c0a383c23ef50c7a74eea59bc89"
  elsif OS.linux?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.15/kommit-linux-x64"
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
