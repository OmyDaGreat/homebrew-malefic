class Parz < Formula
  desc "Shared IR and IDL for programming languages, with a schema REPL"
  homepage "https://github.com/OmyDaGreat/parz"
  version "0.5.0"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/OmyDaGreat/parz/releases/download/v0.5.0/parz-macos-arm64.tar.gz"
      sha256 "4c74fce77fd195e8bae9e213da4196abafe49c2ca8032881ea45d3f1a5ca6693"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/OmyDaGreat/parz/releases/download/v0.5.0/parz-linux-x64.tar.gz"
      sha256 "ce058ef881600fd3d3cc5e086d6c77401e77814c9f631bbffe7c8fd19cb45c63"
    end
    on_arm do
      url "https://github.com/OmyDaGreat/parz/releases/download/v0.5.0/parz-linux-arm64.tar.gz"
      sha256 "9ecfb8e3d8c149a92b9d9f109f7486f156a31c636ba4d55831e5d7a1703c5bf2"
    end
  end

  def install
    bin.install "parz"
  end

  test do
    assert_match "Status", pipe_output(bin/"parz", "enum Status { pending, settled };;")
  end
end
