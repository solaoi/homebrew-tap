class Colc < Formula
  version '1.0.14'
  homepage 'https://github.com/solaoi/colc'
  url "https://github.com/solaoi/colc/releases/download/v1.0.14/colc_darwin_amd64.tar.gz"
  sha256 '258ab5d13dfd81dc1c53b87f31f5a543a75a8caa10f3dc6010a9aef60cd00d28'
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
