class Colc < Formula
  version '1.0.13'
  homepage 'https://github.com/solaoi/colc'
  url "https://github.com/solaoi/colc/releases/download/v1.0.13/colc_darwin_amd64.tar.gz"
  sha256 '3d7aca66b799a9a740365e7c1e8c969f37aa57cf6b0658c00bede40b20bc5a41'
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
