class Maldoctrace < Formula
  desc "Static analyzer and safe VBA emulator for malicious Office documents"
  homepage "https://github.com/debugactiveprocess/MaldocTrace"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/debugactiveprocess/MaldocTrace/releases/download/v0.4.0/maldocTrace_0.4.0_darwin_arm64.tar.gz"
      sha256 "5f3e11e6ae1835ece8b8d30c3936b1a069dc898a64975ea82029053eb2df3649"
    end
    on_intel do
      url "https://github.com/debugactiveprocess/MaldocTrace/releases/download/v0.4.0/maldocTrace_0.4.0_darwin_amd64.tar.gz"
      sha256 "a9755aac9e06a410eb8fab2ea5b4f8e702cd4cba576f8f718ab32a870be6dc9e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/debugactiveprocess/MaldocTrace/releases/download/v0.4.0/maldocTrace_0.4.0_linux_arm64.tar.gz"
      sha256 "3beeb0b85f8902d01985f05dc5333e4666c4d986a2912337e22bad59df5fa49a"
    end
    on_intel do
      url "https://github.com/debugactiveprocess/MaldocTrace/releases/download/v0.4.0/maldocTrace_0.4.0_linux_amd64.tar.gz"
      sha256 "26f5c1177c571c9056dc55bf01b30abeaf056b371c79d61f7b7e58328df1d1ba"
    end
  end

  def install
    bin.install "maldocTrace"
    bin.install_symlink "maldocTrace" => "maldoctrace"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/maldoctrace version")
  end
end
