class Moshy < Formula
  include Language::Python::Virtualenv

  desc "A Simple Mosh wrapper with profile settings"
  homepage "https://github.com/kiniou/moshy.git"
  url "https://github.com/kiniou/moshy.git"
  version "0.1"
  sha256 "a2ca2c5645deb562d34ffb242be7fcad9354e0d1288f493cd139ae9dd4681f21"
  license "NONE"


  depends_on "python"


  resource "docopt" do
    url "https://files.pythonhosted.org/packages/a2/55/8f8cab2afd404cf578136ef2cc5dfb50baa1761b68c9da1fb1e4eed343c9/docopt-0.6.2.tar.gz"
    sha256 "49b3a825280bd66b3aa83585ef59c4a8c82f2c8a522dbe754a8bc8d08c85c491"
  end


  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"moshy", "-h"
  end
end
