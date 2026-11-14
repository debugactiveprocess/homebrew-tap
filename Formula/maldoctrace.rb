class Maldoctrace < Formula
  desc "Static analyzer and safe VBA emulator for malicious Office documents"
  homepage "https://github.com/debugactiveprocess/MaldocTrace"
  version "0.5.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/debugactiveprocess/MaldocTrace/releases/download/v0.5.1/maldocTrace_0.5.1_darwin_arm64.tar.gz"
      sha256 "707938ea171f2a2f4e3f66397d16d047120228ec4b0154162a1ffa129cf0aeac"
    end
    on_intel do
      url "https://github.com/debugactiveprocess/MaldocTrace/releases/download/v0.5.1/maldocTrace_0.5.1_darwin_amd64.tar.gz"
      sha256 "94557b48ff74707daa47793d3c34221df7d67eeb303c4109190841fdc13dcdc9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/debugactiveprocess/MaldocTrace/releases/download/v0.5.1/maldocTrace_0.5.1_linux_arm64.tar.gz"
      sha256 "a5af461c18c78852e519575944add17c2b2081ce7ea5fbc6a71dcc6dcb846662"
    end
    on_intel do
      url "https://github.com/debugactiveprocess/MaldocTrace/releases/download/v0.5.1/maldocTrace_0.5.1_linux_amd64.tar.gz"
      sha256 "1d5de0735b0a1786eac3c42c8eee01991e8f8346ff997901432cea8ed4417d9e"
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
