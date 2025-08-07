class Kommit < Formula
  desc "A conventional commit generator made with Kotlin! "
  homepage "https://github.com/OmyDaGreat/Kommit"
  url "https://github.com/OmyDaGreat/Kommit/archive/refs/tags/v2.0.13.tar.gz"
  sha256 "36bd80a6d55b90e73fb8cf6a8f7ef68570854142e77c5132d7c7708590eea083"
  license "MIT"

  def install
    libexec.install "kommit.jar"
    (bin/"kommit").write <<~EOS
      #!/bin/bash
      exec java -jar "#{libexec}/kommit.jar" "$@"
    EOS
    chmod 0555, bin/"kommit"
  end

  def caveats
    <<~EOS
      kommit requires Java 17 or newer.
      You can install OpenJDK 17 with:
        brew install openjdk@17
      If you have multiple JDKs, make sure your JAVA_HOME points to a compatible JDK.
    EOS
  end

  test do
    system "#{bin}/kommit", "--help"
  end
end
