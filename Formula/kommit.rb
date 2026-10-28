class Kommit < Formula
  desc "A conventional commit generator made with Kotlin!"
  homepage "https://github.com/OmyDaGreat/Kommit"
  license "MIT"
  version "v5.1.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v5.1.0/kommit-macos-arm64"
    sha256 "e192c928aaae2d81ad4a363099c3132d9651c29c808b1ca6e43f6a7d2ef5be43"
  elsif OS.linux?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v5.1.0/kommit-linux-x64"
    sha256 "5ebae945edac8fe284eaf08b88aa13d7b2126e2feb97ac80339ccfb8696ffcd9"
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "kommit-macos-arm64" => "kommit"
    elsif OS.linux?
      bin.install "kommit-linux-x64" => "kommit"
    end
  end

  test do
    system "#{bin}/kommit", "--version"
  end
end
