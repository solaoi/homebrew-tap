# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tuna < Formula
  desc "Software to generate and serve JSON/HTML with flow model"
  homepage "https://github.com/solaoi/tuna-mayonnaise"
  version "0.1.0-alpha"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/solaoi/tuna-mayonnaise/releases/download/v0.1.0-alpha/tuna_0.1.0-alpha_macOS-64bit.tar.gz"
      sha256 "5e2a9da3a25aaec236e232ace832f7d22275be09c426448287bca25f6165e430"
    end
    if Hardware::CPU.arm?
      url "https://github.com/solaoi/tuna-mayonnaise/releases/download/v0.1.0-alpha/tuna_0.1.0-alpha_macOS-ARM64.tar.gz"
      sha256 "4353bbcfafad14a20b87184c42e5a5e6be7b42ec106a33d21d92950394684c63"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/solaoi/tuna-mayonnaise/releases/download/v0.1.0-alpha/tuna_0.1.0-alpha_Linux-64bit.tar.gz"
      sha256 "3400960616dee08e8a0dfced4559f1e8002d997275a431c0bda89ed714befda5"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/solaoi/tuna-mayonnaise/releases/download/v0.1.0-alpha/tuna_0.1.0-alpha_Linux-ARM64.tar.gz"
      sha256 "9eccdad9dd6a17d7ffb116535c16be80ce60b54cb117e2feee1acb3e5f85e01c"
    end
  end

  def install
    bin.install "tuna"
  end

  test do
    system "#{bin}/tuna help"
  end
end
