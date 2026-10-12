class Kommit < Formula
  desc "A conventional commit generator made with Kotlin!"
  homepage "https://github.com/OmyDaGreat/Kommit"
  license "MIT"
  version "v3.0.16"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.16/kommit-macos-arm64"
    sha256 "605b3d9a09891cbfebfb3d69f8261d02e77b1aed54c64acca370545f8106eaf8"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.16/kommit-macos-x64"
    sha256 "6bb7fd9771fc5c8dad34b7d4add29e25fef9593479dcddaba0402c2d8f674572"
  elsif OS.linux?
    url "https://github.com/OmyDaGreat/Kommit/releases/download/v3.0.16/kommit-linux-x64"
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
