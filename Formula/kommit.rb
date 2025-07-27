class Kommit < Formula
  desc "A conventional commit generator made with Kotlin! "
  homepage "https://github.com/OmyDaGreat/Kommit"
  url "https://github.com/OmyDaGreat/Kommit/releases/download/v2.0.11/mfc-2.0.11.zip"
  sha256 "31870d2ed87f48770f6f5f20b10045103bd4af210cdcde4615a826e480d31960"
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
