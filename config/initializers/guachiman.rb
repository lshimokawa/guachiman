require 'yaml'

CONFIG = YAML::load_file File.join(Rails.root, "config", "guachiman.yml")