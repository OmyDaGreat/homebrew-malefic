class Kommit < Formula
  desc "A conventional commit generator made with Kotlin!"
  homepage "https://github.com/OmyDaGreat/Kommit"
  license "MIT"
  version "v3.0.30"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.30/kommit-macos-arm64"
    sha256 "990da195d3033ee0aaac80024e970f93ab51ea4cdc2306b5fe804ab5de70fb61"
  elsif OS.linux?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.30/kommit-linux-x64"
    sha256 "9bcb118b29df1f887c54eae0c5eb632eb9d7a9776e205c706c30774ed2de5af6"
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
