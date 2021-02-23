# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tuna < Formula
  desc "Software to generate and serve JSON/HTML with flow model"
  homepage "https://github.com/solaoi/tuna-mayonnaise"
  version "0.0.17-alpha"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/solaoi/tuna-mayonnaise/releases/download/v0.0.17-alpha/tuna_0.0.17-alpha_macOS-64bit.tar.gz"
    sha256 "124fce8b1e73b5c036c56c606267479c546e645099dbff4194d039f78c8ebcac"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/solaoi/tuna-mayonnaise/releases/download/v0.0.17-alpha/tuna_0.0.17-alpha_macOS-ARM64.tar.gz"
    sha256 "eb2caaf576eddb2beba9d28206e1af6e3213ece257497f009a679868f72590a8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/solaoi/tuna-mayonnaise/releases/download/v0.0.17-alpha/tuna_0.0.17-alpha_Linux-64bit.tar.gz"
    sha256 "445300b4c24768a50992e7452ccbf41d3363527422afd488f8598e275b7b26e1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/solaoi/tuna-mayonnaise/releases/download/v0.0.17-alpha/tuna_0.0.17-alpha_Linux-ARM64.tar.gz"
    sha256 "cb63cc4cd22c2b9b88d9191c6962dd52dc8e6af1011fa7f73021d2ae0132eab9"
  end

  def install
    bin.install "tuna"
  end

  test do
    system "#{bin}/tuna help"
  end
end
