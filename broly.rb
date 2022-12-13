class Broly < Formula
  version '0.2.2'
  homepage 'https://github.com/solaoi/broly'
  url "https://github.com/solaoi/broly/releases/download/v0.2.2/broly_darwin_amd64.tar.gz"
  sha256 'a70dd64692b0a1debeda9eacf09198690ea69348b84179d7ec6000b85a37ec7f'
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
