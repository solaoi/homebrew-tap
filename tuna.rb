# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tuna < Formula
  desc "Software to generate and serve JSON/HTML with flow model"
  homepage "https://github.com/solaoi/tuna-mayonnaise"
  version "0.0.7-alpha"
  license "MIT"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/solaoi/tuna-mayonnaise/releases/download/v0.0.7-alpha/tuna_0.0.7-alpha_macOS-64bit.tar.gz"
    sha256 "51a3dc0c67606a5da2a4b5700b7fe6e15b5cc1b7d289307d957f474206516349"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/solaoi/tuna-mayonnaise/releases/download/v0.0.7-alpha/tuna_0.0.7-alpha_Linux-64bit.tar.gz"
    sha256 "292fa888a7a5e098bc244511b26e42c63e5dec98c5757c02431de03786e439ce"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/solaoi/tuna-mayonnaise/releases/download/v0.0.7-alpha/tuna_0.0.7-alpha_Linux-ARM64.tar.gz"
    sha256 "25451f2c66bcaff0e83a9ae5b82045bc653f08c2fc0cc413aef9ec9ca9399506"
  end

  def install
    bin.install "tuna"
  end

  test do
    system "#{bin}/tuna help"
  end
end
