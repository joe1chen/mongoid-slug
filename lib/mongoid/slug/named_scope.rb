# encoding: utf-8
module Mongoid #:nodoc:

  # This module contains the named scoping behaviour.
  module NamedScope

    module ClassMethods #:nodoc:

      # Gets either the last scope on the stack or creates a new criteria.
      #
      # @example Get the last or new.
      #   Person.scoping(true)
      #
      # @param [ true, false ] embedded Is this scope for an embedded doc?
      # @param [ true, false ] scoped Are we applying default scoping?
      #
      # @return [ Criteria ] The last scope or a new one.
      #
      # @since 2.0.0
      def criteria(embedded = false, scoped = true)
        (scope_stack.last || Mongoid::Slug::Criteria.new(self, embedded)).tap do |crit|
          return crit.apply_default_scope if scoped
        end
      end
    end
  end
end