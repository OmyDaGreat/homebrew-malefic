class Kommit < Formula
  desc "Conventional commit message generator driven by a YAML config"
  homepage "https://github.com/OmyDaGreat/Kommit"
  version "5.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/OmyDaGreat/Kommit/releases/download/v5.1.1/kommit-macos-arm64.tar.gz"
      sha256 "0fa7959009b9a2c552dea224d3b4fae4c62455dce5600582256be0d4f1d0309b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/OmyDaGreat/Kommit/releases/download/v5.1.1/kommit-linux-x64.tar.gz"
      sha256 "5259fcac7c802310aad7a1e6de504569be0714216b9d31c5546dcb40a52444fa"
    end
  end

  def install
    bin.install "kommit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kommit --version")
  end
end
