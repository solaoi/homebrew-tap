class Colc < Formula
  version '1.0.21'
  homepage 'https://github.com/solaoi/colc'
  url "https://github.com/solaoi/colc/releases/download/v1.0.21/colc_darwin_amd64.tar.gz"
  sha256 'f23c850a74310a9ddcb1e28930c8cd027a50877714df34c4ec79c0e37df43560'
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
