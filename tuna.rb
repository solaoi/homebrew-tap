# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tuna < Formula
  desc "Software to generate and serve JSON/HTML with flow model"
  homepage "https://github.com/solaoi/tuna-mayonnaise"
  version "0.0.9-alpha"
  license "MIT"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/solaoi/tuna-mayonnaise/releases/download/v0.0.9-alpha/tuna_0.0.9-alpha_macOS-64bit.tar.gz"
    sha256 "3ec3fd3573d9659b4be185f8a8cc2ba52c1e30da6ec4f58859156abbf624c474"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/solaoi/tuna-mayonnaise/releases/download/v0.0.9-alpha/tuna_0.0.9-alpha_Linux-64bit.tar.gz"
    sha256 "b55bce30eb0bcf89593aabdf1799c35d43b53a09fe920bb89ce4771bd9d9b141"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/solaoi/tuna-mayonnaise/releases/download/v0.0.9-alpha/tuna_0.0.9-alpha_Linux-ARM64.tar.gz"
    sha256 "7332187373cb0887c5599a711ee1666808d54e38e07acf6c07b87d0ac06fad5a"
  end

  def install
    bin.install "tuna"
  end

  test do
    system "#{bin}/tuna help"
  end
end
