# frozen_string_literal: true

# SPDX-FileCopyrightText: Copyright (c) 2014-2026 Yegor Bugayenko
# SPDX-License-Identifier: MIT

require 'minitest/autorun'

module Jekyll
  class Generator
    def self.priority(_level); end

    def self.safe(_flag); end
  end
end

require_relative '../lib/jekyll-git-hash'

# Test of the Git hash generator plugin.
class TestJekyllGitHash < Minitest::Test
  def test_loads_plugin_with_jekyll_generator_as_superclass
    assert_equal(Jekyll::Generator, Jekyll::GitHashGenerator.superclass, 'The superclass is not Jekyll::Generator')
  end
end
