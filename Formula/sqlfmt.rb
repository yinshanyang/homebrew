class Sqlfmt < Formula
  include Language::Python::Virtualenv
  desc "SQL formatter what works well with dbt"
  homepage "https://github.com/tconbeer/sqlfmt"
  url "https://files.pythonhosted.org/packages/a0/d9/4491e2cfa007dac6a2cd348c7cb496a9b91e2529f0fede448702d93ba5cf/shandy_sqlfmt-0.18.1.tar.gz"
  sha256 "4ccf0dff917adc226e34a6eead5951c38939eda7777549975ed47d6fdd346140"
  version "0.18.1"

  depends_on "python3"

  resource "black" do
    url "https://files.pythonhosted.org/packages/d6/36/66370f5017b100225ec4950a60caeef60201a10080da57ddb24124453fba/black-23.3.0.tar.gz"
    sha256 "1c7b8d606e728a41ea1ccbd7264677e494e87cf630e399262ced92d4a8dac940"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/59/87/84326af34517fca8c58418d148f2403df25303e02736832403587318e9e8/click-8.1.3.tar.gz"
    sha256 "7682dc8afb30297001674575ea00d1814d808d6a36af415a82bd481d37ba7b8e"
  end

  resource "mypy-extensions" do
    url "https://files.pythonhosted.org/packages/98/a4/1ab47638b92648243faf97a5aeb6ea83059cc3624972ab6b8d2316078d3f/mypy_extensions-1.0.0.tar.gz"
    sha256 "75dbf8955dc00442a438fc4d0666508a9a97b6bd41aa2f0ffe9d2f2725af0782"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/b9/6c/7c6658d258d7971c5eb0d9b69fa9265879ec9a9158031206d47800ae2213/packaging-23.1.tar.gz"
    sha256 "a392980d2b6cffa644431898be54b0045151319d1e7ec34f0cfed48767dd334f"
  end

  resource "pathspec" do
    url "https://files.pythonhosted.org/packages/95/60/d93628975242cc515ab2b8f5b2fc831d8be2eff32f5a1be4776d49305d13/pathspec-0.11.1.tar.gz"
    sha256 "2798de800fa92780e33acca925945e9a19a133b715067cf165b8866c15a31687"
  end

  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/9c/0e/ae9ef1049d4b5697e79250c4b2e72796e4152228e67733389868229c92bb/platformdirs-3.5.1.tar.gz"
    sha256 "412dae91f52a6f84830f39a8078cecd0e866cb72294a5c66808e74d5e88d251f"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/3d/78/81191f56abb7d3d56963337dbdff6aa4f55805c8afd8bad64b0a34199e9b/tqdm-4.65.0.tar.gz"
    sha256 "1871fb68a86b8fb3b59ca4cdd3dcccbc7e6d613eeed31f4c332531977b89beb5"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    assert_match "sqlfmt, version 0.18.1", shell_output("#{bin}/sqlfmt --version")
  end
end
