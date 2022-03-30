class Colc < Formula
  version '1.0.19'
  homepage 'https://github.com/solaoi/colc'
  url "https://github.com/solaoi/colc/releases/download/v1.0.19/colc_darwin_amd64.tar.gz"
  sha256 'f11cfaa860df7b4a8ed1bcbcdbf9c16502ed07ac52aef405560edd230a869c43'
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
