module Mongoid
  module Association
    module Embedded
      class EmbeddedIn

        # The Builder behavior for embedded_in associations.
        #
        # @since 7.0
        module Buildable
          include Threaded::Lifecycle

          # This builder doesn't actually build anything, just returns the
          # parent since it should already be instantiated.
          #
          # @example Build the document.
          #   Builder.new(meta, attrs).build
          #
          # @param [ Object ] base The object.
          # @param [ Object ] object The parent hash or document.
          # @param [ String ] type Not used in this context.
          #
          # @return [ Document ] A single document.
          def build(base, object, type = nil)
            return object unless object.is_a?(Hash)
            if _loading?
              Factory.from_db(klass, object)
            else
              Factory.build(klass, object)
            end
          end
        end
      end
    end
  end
end
