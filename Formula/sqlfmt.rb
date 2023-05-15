class Sqlfmt < Formula
  include Language::Python::Virtualenv
  desc "SQL formatter what works well with dbt"
  homepage "https://github.com/tconbeer/sqlfmt"
  url "https://files.pythonhosted.org/packages/a0/d9/4491e2cfa007dac6a2cd348c7cb496a9b91e2529f0fede448702d93ba5cf/shandy_sqlfmt-0.18.1.tar.gz"
  sha256 "4ccf0dff917adc226e34a6eead5951c38939eda7777549975ed47d6fdd346140"
  version "0.18.1"
  revision 1

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    asset_match "magic", shell_output("#{bin}/sqlfmt")
  end
end
