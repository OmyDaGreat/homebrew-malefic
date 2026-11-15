class Parz < Formula
  desc "Shared IR and IDL for programming languages, with a schema REPL"
  homepage "https://github.com/OmyDaGreat/parz"
  version "0.4.0"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/OmyDaGreat/parz/releases/download/v0.4.0/parz-macos-arm64.tar.gz"
      sha256 "9bc0f3e7ef7f13a889a7064622c7aab85d92a255528eb5f8db4fb8ade2f83f18"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/OmyDaGreat/parz/releases/download/v0.4.0/parz-linux-x64.tar.gz"
      sha256 "e3ae13823a4a8a97c4b75e4e3702bb27d91fd032e8410898af586415faa08c8a"
    end
    on_arm do
      url "https://github.com/OmyDaGreat/parz/releases/download/v0.4.0/parz-linux-arm64.tar.gz"
      sha256 "fd6b60aaf4a5c5657ac3cf134a84cb0ceba9bb87891b06a701feb6e53a083d1d"
    end
  end

  def install
    bin.install "parz"
  end

  test do
    assert_match "Status", pipe_output(bin/"parz", "enum Status { pending, settled };;")
  end
end
