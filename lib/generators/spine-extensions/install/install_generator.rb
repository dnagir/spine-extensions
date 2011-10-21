require 'rails'

module SpineExtensions
  module Generators

    class InstallGenerator < ::Rails::Generators::Base
      desc "This generator installs Spine Extensions into application.js manigest"
      
      def inject_require_into_manifest
        inject_into_file "app/assets/javascripts/application.js", :before => "//= require_tree" do
          "//= require spine-extensions\n"
        end
      end
    end

  end
end
