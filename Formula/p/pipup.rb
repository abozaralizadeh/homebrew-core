class Pipup < Formula
  include Language::Python::Virtualenv

  desc "Update Python package versions in requirements.txt"
  homepage "https://github.com/abozaralizadeh/pipup"
  url "https://github.com/abozaralizadeh/pipup/archive/v1.0.1.tar.gz"
  sha256 "64a07cd9f1cbfd76ed3a1ebf31e90f4da46c56b61df3315190fca1300df9a7f8"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"pipup", "--version"
  end
end
