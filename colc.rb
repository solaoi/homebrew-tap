class Colc < Formula
  version '1.0.17'
  homepage 'https://github.com/solaoi/colc'
  url "https://github.com/solaoi/colc/releases/download/v1.0.17/colc_darwin_amd64.tar.gz"
  sha256 'ce9b0db1b877ab4b3d4179f1dfe4dae9e9e8cfc1fefa967d3b5c4e678c404c63'
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
