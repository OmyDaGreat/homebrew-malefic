class Kommit < Formula
  desc "A conventional commit generator made with Kotlin! "
  homepage "https://github.com/OmyDaGreat/Kommit"
  url "https://github.com/OmyDaGreat/Kommit/releases/download/v2.0.14/kommit-2.0.14.zip"
  sha256 "93c8e9e3213fe9245a921df74032d20d71b4d2d33f6c58a65725fb583431a583"
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
