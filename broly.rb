class Broly < Formula
  version '0.2.1'
  homepage 'https://github.com/solaoi/broly'
  url "https://github.com/solaoi/broly/releases/download/v0.2.1/broly_darwin_amd64.tar.gz"
  sha256 '8749aad2fbda8aeb7a11f7d951dc529aaccbbf6709e019e0325a33c0d91be0b7'
  head 'https://github.com/solaoi/broly.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'broly'
  end
end
