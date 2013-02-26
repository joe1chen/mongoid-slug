# encoding: utf-8
module Mongoid #:nodoc:
  module Fields #:nodoc:
    module Internal #:nodoc:

      # Defines the behaviour for localized fields.
      class Localized

        # Convert the provided object into a hash for the locale.
        # Overrode original behavior to not call to_s in order to support localized arrays (and other objects).
        #
        # @example Serialize the value.
        #   field.serialize("testing")
        #
        # @param [ Object ] object The string to convert.
        #
        # @return [ Hash ] The locale with string translation.
        #
        # @since 2.3.0
        def serialize(object)
          { ::I18n.locale.to_s => object }
        end
      end
    end
  end
end
