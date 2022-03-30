class Colc < Formula
  version '1.0.20'
  homepage 'https://github.com/solaoi/colc'
  url "https://github.com/solaoi/colc/releases/download/v1.0.20/colc_darwin_amd64.tar.gz"
  sha256 '857be0241bfb5eb77bd0762fffa4350fd16744e4b7298cf1c643924d9d2a9b48'
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
