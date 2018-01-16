require 'rails/generators/active_record'
require 'generators/active_record/voltex_generator'

module ActiveRecord
  module Generators
    class VoltexPermissionGenerator < ActiveRecord::Generators::Base
      include VoltexGenerator

      source_root File.expand_path('../templates/permission', __FILE__)

      private

      def model_content
        "# Voltex.
         # Please review the following content.
         has_and_belongs_to_many :#{Voltex.roles_name}"
      end
    end
  end
end
