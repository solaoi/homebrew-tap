class Colc < Formula
  version '1.0.16'
  homepage 'https://github.com/solaoi/colc'
  url "https://github.com/solaoi/colc/releases/download/v1.0.16/colc_darwin_amd64.tar.gz"
  sha256 'a9e068f8a055f1387f60540b57b0c93d99e4b7198797f995c625f016fd37595f'
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
