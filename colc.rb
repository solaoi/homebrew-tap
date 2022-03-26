class Colc < Formula
  version '1.0.5'
  homepage 'https://github.com/solaoi/colc'
  url "https://github.com/solaoi/colc/releases/download/v1.0.5/colc_darwin_amd64.tar.gz"
  sha256 '3a4d2cccd65470e0f0485ba5f20d74cb2f5f0687c32e4c45d9a16aad89df5947'
  head 'https://github.com/solaoi/colc.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'colc'
  end
end
